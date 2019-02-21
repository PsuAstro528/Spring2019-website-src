+++
title = "Discussion Topics Week 7"
date = "19 Feb 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 07150  # wwdpp

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
# Astro 528, Week 7

High-Performance Scientific Computing for Astrophysics
---
# Logistics
___
## Projects
- Make sure reviewer(s) can access your repo
- Make sure you can access repo to review
- Make sure repos include code in simple text files (i.e., not just Jupyter notebooks)
- [Review instructions](/project/code_reviews)
- Provide most feedback via [GitHub Issues](https://guides.github.com/features/issues/)
___
## Project Timeline
- Peer code review (due Feb 28)
- Lab 5: incl. Parallelization for Multi-core (due March 3)
- Spring Break (March 4-8)
- Lab 6: incl. Submitting PBS Jobs to ACI (due March 17)
- First parallel version of code (multi-core) (due March 28)
___
## Lab 5:
- Remember to request multiple cores
---
# Success stories
"we stripped out the scipy dependency... and... we achieved a factor of ~250 speedup"
---
# Reading Questions
___
## Do compilers parallelize automatically?
<p class="fragment">How good of a parallelization job can they do?</p>
___
## What do compilers parallelize automatically?
<p class="fragment">- SIMD instructions</p>
<p class="fragment">- Needs `@inbounds`</p>
___
## What can compilers parallelize with some help?
<p class="fragment">- Parallel languages (e.g., Fortran >=90)</p>
<p class="fragment">- Language extensions (e.g., OpenMP)</p>
___
## What can't compilers parallelize without you?
<p class="fragment">- When does order not matter?</p>
---
## Parallel Programming 1:
### Shared-Memory
___
## Examples of Shared-Memory Systems
<p class="fragment">
- Laptop (~2-6 cores)
- Workstation/Compute Node (~4-24 cores)
- Server (~8-128 cores)
- Old school supercomputers (e.g., Cray Y-MP)
</p>
___
## Examples of Non-Shared-Memory Systems
<p class="fragment">
- Computer Cluster
- Cloud computing
</p>
___
## Advantages of Shared-Memory Systems
- Ease of programming
- Good for tightly coupled problems
___
## Disadvantages of Shared-Memory Systems
- Sharing memory creates costs
- Locking
---
## OpenMP
```c
#pragma omp parallel for
for(i=0;i< num_steps; i++)
    {
    output[i] = f(input[i])
    }
```
___
### Compiling & Running OpenMP code
```sh
gcc -lm -Ofast -fopenmp -o execitable source.c
export OMP_NUM_THREADS=4
./executable
```
---
## Parallelizing for Shared-Memory System with Julia
___
### Spinning up multiple cores
- Request multiple cores (either portal or via PBS)
- Command line: `julia -p 4`
- After julia has started:
```julia
using Distributed
addprocs(4)
```
___
### Loading code on each worker
- `@everywhere using SharedArrays`
- `@everywhere include("my_code.jl")`
- `@everywhere square(x) = x*x`
___
### Getting data from worker
```julia
x = 17
ref = @spawn f(x)
y = fetch(ref)
```
___
### Moving data to workers
- As function argument (e.g., `@spawn f(x)`)
- Explictly
```julia
data = CSV.read("input.csv")
for p in workers()
    remotecall_fetch(()->data, p)
end
```
- [ParallelDataTransfer.jl](https://github.com/ChrisRackauckas/ParallelDataTransfer.jl)
   - `@passobj 1 workers() data`

Note:
Shared loading of data via JuliaDB's `loadtable(files::AbstractVector; options)`
___
### Options for Parallelizing
- `Array` to `SharedArray`
- `map` to `pmap`
- `@distributed for`
___
### Parallelizing with `@distributed`
```julia
out = SharedArray{eltype(x)}(length(x))
@sync @distributed for i in 1:length(x)
    out[i] = conv_spectrum(x[i])
end
```
___
### Parallelizing with `Threads` (experimental)
```julia
out = zeros(length(x))
Threads.@threads for i in 1:length(x)
   out[i] = conv_spectrum(x[i])
end
```
---

---
# Questions?
{{</revealjs>}}
