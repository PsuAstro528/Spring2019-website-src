+++
title = "Discussion Topics Week 8"
date = "26 Feb 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 08150  # wwdpp

chapter= false
hidden = false

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11 at psu dot edu"

type = "page"
theme = "psu"
[revealOptions]
transition= 'slide' # 'none','fade','concave','convex','zoom'
controls= true
progress= true
history= false
center= true
loop= false
pdfSeparateFragments= false
showNotes= true
pdfMaxPagesPerSlide=1
+++

{{<revealjs theme="psu" transition="slide" controls="true" progress="true" history="false" center="false" loop="false" pdfSeparateFragments="false" showNotes="true" pdfMaxPagesPerSlide="1" >}}
# Astro 528, Week 8

High-Performance Scientific Computing for Astrophysics
---
# Logistics
___
## Projects
Peer code review (due Feb 28)
- Make sure reviewer(s) can access your repo
- Make sure you can access repo to review
- Make sure repos include code in simple text files (i.e., not just Jupyter notebooks)
- [Review instructions](/project/code_reviews)
- Provide most feedback via [GitHub Issues](https://guides.github.com/features/issues/)
___
## Labs
___
### Lab 5:
- Request multiple cores when start session
___
### Lab 6:
- Don't need multiple cores for notebook/interactive desktop
- Parallel computing will occur inside batch jobs
---
# Reading Questions
___
## Best practices for global constants

```julia
module SolarSystem
const mass_of_sun_in_kg = 1.989e30     # kg
const mass_of_earth_in_kg = 5.972e24   # kg
end # module SolarSystem

import .SolarSystem
mstar = 1.2 * SolarSystem.mass_of_sun_in_kg
```
___
## Best practices for global constants

```julia
module SolarSystem
export mass_of_sun_in_kg, mass_of_earth_in_kg
const mass_of_sun_in_kg = 1.989e30     # kg
const mass_of_earth_in_kg = 5.972e24   # kg
end # module SolarSystem

using .SolarSystem
mstar = 1.2 * mass_of_sun_in_kg
```
---
## Making parallel programming practical
### Single Program Multiple Data (SPMD)
- [Message Passing Interface (MPI)](https://computing.llnl.gov/tutorials/mpi/) ([more tutorials](http://mpitutorial.com/))
- [DistributedArrays.jl SPMD mode](https://juliaparallel.github.io/DistributedArrays.jl/latest/index.html#SPMD-Mode)
___
## MPI, the hard way
- MPI_Send(...)
- MPI_Recv(...)
___
```c
#include "mpi.h"
#include <stdio.h>

main(int argc, char *argv[])  {
int numtasks, rank, dest, source, rc, count, tag=1;
char inmsg, outmsg='x';
MPI_Status Stat;   // required variable for receive routines

MPI_Init(&argc,&argv);
MPI_Comm_size(MPI_COMM_WORLD, &numtasks);
MPI_Comm_rank(MPI_COMM_WORLD, &rank);

// task 0 sends to task 1 and waits to receive a return message
if (rank == 0) {
dest = 1;
source = 1;
MPI_Send(&outmsg, 1, MPI_CHAR, dest, tag, MPI_COMM_WORLD);
MPI_Recv(&inmsg, 1, MPI_CHAR, source, tag, MPI_COMM_WORLD, &Stat);
}

// task 1 waits for task 0 message then returns a message
else if (rank == 1) {
dest = 0;
source = 0;
MPI_Recv(&inmsg, 1, MPI_CHAR, source, tag, MPI_COMM_WORLD, &Stat);
MPI_Send(&outmsg, 1, MPI_CHAR, dest, tag, MPI_COMM_WORLD);
}

// query recieve Stat variable and print message details
MPI_Get_count(&Stat, MPI_CHAR, &count);
printf("Task %d: Received %d char(s) from task %d with tag %d \n",
rank, count, Stat.MPI_SOURCE, Stat.MPI_TAG);

MPI_Finalize();
}
```
Note:
From https://computing.llnl.gov/tutorials/mpi/
___
## Deadlock
```c
if (rank == 0) {
MPI_Send(..., 1, tag, MPI_COMM_WORLD);
MPI_Recv(..., 1, tag, MPI_COMM_WORLD, &status);
} else if (rank == 1) {
MPI_Send(..., 0, tag, MPI_COMM_WORLD);
MPI_Recv(..., 0, tag, MPI_COMM_WORLD, &status);
}
```
___
## Avoiding Deadlock by order of calls
```c
if (rank == 0) {
MPI_Send(..., 1, tag, MPI_COMM_WORLD);
MPI_Recv(..., 1, tag, MPI_COMM_WORLD, &status);
} else if (rank == 1) {
MPI_Recv(..., 0, tag, MPI_COMM_WORLD, &status);
MPI_Send(..., 0, tag, MPI_COMM_WORLD);
}
```
___
## Avoiding Deadlock with Non-Blocking Communicaions
```c
if (rank == 0) {
MPI_Isend(..., 1, tag, MPI_COMM_WORLD, &req);
MPI_Recv(..., 1, tag, MPI_COMM_WORLD, &status);
MPI_Wait(&req, &status);
} else if (rank == 1) {
MPI_Recv(..., 0, tag, MPI_COMM_WORLD, &status);
MPI_Send(..., 0, tag, MPI_COMM_WORLD);
}
```
___
## MPI:  Collective Communications
- MPI_Bcast
- MPI_Scatter
- MPI_Gather
- MPI_Reduce
- MPI_Barrier

___
## MPI:  Collective Communications
![Collective Communications](/images/week8/discuss8_collective_comm.gif)

Note:
 https://computing.llnl.gov/tutorials/mpi/
___
## Other MPI Collective Communications

![Broadcast simple](/images/week8/broadcast_pattern.png)
![broadcast vs scatter](/images/week8/broadcastvsscatter.png)

![gather](/images/week8/gather.png)
![allgather](/images/week8/allgather.png)

Note:
http://mpitutorial.com/tutorials/mpi-scatter-gather-and-allgather/
___
## Implementation of Broadcast
Simple  vs    Efficient

![Broadcast simple](/images/week8/broadcast_pattern.png)
vs
![Broadcast efficient](/images/week8/broadcast_tree.png)

Note:
http://mpitutorial.com/tutorials/mpi-scatter-gather-and-allgather/
___
## DistributedArray's SPMD mode
```julia
@everywhere using DistributedArrays
@everywhere function square_elements!(x_out, x_in)
 x_out[:L] .= x_in[:L].^2
end
d_in  = drand(100)
d_out = similar(d_in)
spmd(square_elements!, d_out,d_in; pids=workers())
```
___
## DistributedArray's SPMD mode's collective communication
- barrier
- bcast
- scatter
- gather

Note:
Also
 sendto, recvfrom
 recvfrom_any
---
# Questions?
{{</revealjs>}}
