+++
title = "Discussion Topics Week 9"
date = "26 Feb 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 09150  # wwdpp

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
# Astro 528, Week 9

High-Performance Scientific Computing for Astrophysics
---
# Projects
___
### Serial Code & Code Reviews
- Good job!
- Different people/teams emphasized different parts
___
How do you feel about projects so far?
- Giving code review
- Getting code review
- Resulting Discussion
___
### Project Timeline
- First parallel version of code (multi-core) (due March 28)
- Second parallel version of code (distributed/GPU/etc) (due April 18)
- Completed code, documentation, benchmarks, conclusions (due April 18)
- Presentations (April 9-25)
---
## Common Suggestions
___
### Break into more/smaller functions
- Aids readability
- Eases testing/benchmarking
- Increases code reuse
- Eases upgrading
___
### Unit Tests
- Plaussible results
   - `@assert isfinite(f(3))`
- Accurate results
   - `@assert f(3) = 9`
___
### Code Organization
Beyond one big notebook
- Core code
- Tests
- Examples
- Benchmarks
___
### Duplicated calculations
```julia
b.x =  cos(theta)*a.x+sin(theta)*a.y
b.y = -sin(theta)*a.x+cos(theta)*a.y
```
___
### Avoiding Duplicated calculations
```julia
function f(A, x; g_of_A_x = g(A,x) )
   ...
end
```
___
### Avoiding Duplicated calculations
```julia
function f_low_level(A, x, g_of_A_x; eps=default_eps, tol=default_eps )
   ...
end

function f_hi_level(A, x)
   g_of_A_x = g(A,x)
   f_low_level(A,x, g_of_A_x, eps=default_eps, eps=default_tol )
   ...
end
```
___
### [Memoize.jl](https://github.com/JuliaCollections/Memoize.jl)
```
using Memoize
@memoize function x(a)
	println("Running")
	a
end
julia> x(1)
Running
1

julia> x(1)
1
```
___
### Unnecessary Memory Allocation
- Explicit temporary arrays
- Implicit temporary arrays
- Arrays in place of Itterators
- Preallocating memory
___
### Itterators vs Arrays
```julia
x_range = x_min:dx:x_max
x_points = collect(xrange)
```
___
### Preallocating memory
```julia
function apply_f(x; out=zeros(length(x)) )
   map!(f,out,x)
   return out
end
```
___
### Preallocating memory
```julia
struct WorkSpaceT{T<:Number}
  A::Array{T,2}
  x::Array{T,1}
  b::Array{T,1}
end

function do_work(y; workspace=WorkSpaceT() )
   ...
end
```
---
## Lab 6:
Distributed Computing
- Lab 6: (due March 17)
   - Submitting PBS Jobs to ACI
   - Parallel Computing for Distributed Memory Model
   - Running your Project Code on ACI
- Don't need multiple cores for notebook/interactive desktop
- Parallel computing will occur inside batch jobs
___
## PBS Jobs
- qsub
- qstat [|grep userid]
- qdel jobid
- qfilter
- qstat -f jobid
- qhold
- qrls
___
## qsub Options
```bash
#!/bin/bash
#PBS -A open
#PBS -l walltime=HH:MM:SS
#PBS -l nodes=1:ppn=1
#PBS -l pmem=1gb
#PBS -j oe
#PBS -N JobName
#PBS -M userid@psu.edu
#PBS -m abe
...
```
___
## Accessing PBS Environment Variables
```bash
...
echo "Starting job $PBS_JOBNAME"
echo "Job id: $PBS_JOBID"
echo "Job arrayid: $PBS_ARRAYID"
echo "About to change into $PBS_O_WORKDIR"
cd $PBS_O_WORKDIR
echo "About to start Julia"
julia ex1.jl
echo "Julia exited"
```
___
## Parallel Jobs
```bash
#PBS -l nodes=1:ppn=1
...
julia --machine-file $PBS_NODEFILE ex1_parallel.jl
```
___
## PBS Job Arrays
```bash
#PBS -t 100%20
...
julia ex1_job_array.jl $PBS_ARRAYID
```

---
## Lab 7:
GPU Programming
- [CyberLAMP wiki](https://wikispaces.psu.edu/display/CyberLAMP/System+information)
- [GPU Comparison](https://en.wikipedia.org/wiki/List_of_Nvidia_graphics_processing_units)
___
## Accessing CyberLAMP GPUs
```bash
#!/bin/bash
#PBS -A cyberlamp_class
#PBS -l qos=cl_class
#PBS -l nodes=1:ppn=1:gpus=1
...
```
---
# Questions?
{{</revealjs>}}
