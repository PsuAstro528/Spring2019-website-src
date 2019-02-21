+++
title = "Discussion Topics Week 5"
date = "5 Feb 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 05150  # wwdpp

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
+++


{{<revealjs theme="psu" transition="slide" controls="true" progress="true" history="false" center="false" loop="false" pdfSeparateFragments="false" showNotes="true" >}}
# Discussion Topics

Astro 528, Week 5

High-Performance Scientific Computing for Astrophysics

---

## Logistics
___

## Feedback on Guest Lecture
___
## Lab 3:

- Good job
- Questions
___
## Lab 4:
- Coming Thursday
---
# Projects
___
## Project Timeline
- Project proposal (due Jan 31)
- Serial version of code (due Feb 21)
- Peer code review (due Feb 28)
- Parallel version of code (multi-core) (due March 28)
- Second parallel version of code (distributed-memory/GPU/cloud) (due April 18)
- Completed code & documentation (due April 18)
- Class presentations (April 9-25, see schedule )
___
## Project Scope

Serial version of code (due Feb 21)

- Some projects may need to be less ambitious
- Focus energy on writing the performance critical parts of your code well
- May save time by glossing over real world details
___
## Project: Tests

- What's suboptimal about using only end-to-end tests?
___
## Project: Tests

Include:
- Unit tests
- Regression tests (multiple versions)
- End-to-end tests

___
## Project: Inputs & Outputs

- Be precise
- What is size of each input (focusing on large ones)?
- What are implications for code design?

___
## Project: Parallelization

What dimension(s) of your problem will you parallelize over?

Implications for
- Plaussibility of improveing performance
- What architectures you target
- How you setup your data structures
---

# Reading Questions
___
## Registers vs Cache vs Stack vs Heap
- Affects all programming languages
- Does thinking about it make a difference?
___
## [Compare Latencies](https://people.eecs.berkeley.edu/~rcs/research/interactive_latency.html)
___
## Multiple caches

If I want to fetch a value that's in the L2 cache, is it put in the L1 cache and then fetched from L1 to the register, or does it get put into the register directly from L2?
___
## Memory layout:
- Column-major vs Row-major
- Where else?
___
## Memory layout:
- Column-major vs Row-major
- Array of structures vs Struct of array's
___
## Cross-language issues
- Passing by value vs passing by pointer/reference
- What if need to convert types
___
## Cross-language issues

If we used PyCall in Julia to make an array in Python (which is row-major), would it end up being stored in column-major or row-major order?
---
## Conditionals inside a loop
- Can they be avoided?  If not...
   - CPU will try to predict which branch to take
   - GPUs generally stall while running each case
- Prefer smaller conditional code segments
- Make it easy to predict correctly (?)

---
# Optimizing Compilers
___
## Optimizing Compilers
Julia
- Specify level of compiler optimizations:
 `julia -O` or `julia --optimize={0,1,2,3}`
-  default level is 2 if unspecified
-  default level is 3 if used without a level

Gcc
- `gcc -O` (defaults to -O2, safe optimizations)
- `gcc -O3` (includes unsafe optimizations)
___
## What CPU architecture?

Does the Julia compiler optimize code specifically for the computer architecture of the machine on which it is compiled or optimize generally for common computer architectures?

Julia
- `-C, --cpu-target <target>`

Gcc
- `-mtune=generic` vs `-mtune=native`
- `-march=native`

___
## Other optimization flags

Julia
- `--check-bounds={yes|no}`
- `--math-mode={ieee,fast}`

Gcc
- `-ffast-math`

---
# Profiling
___
## Profiling
```julia
using Profile
Profile.init(delay = 0.0001)
Profile.clear()
@profile result = your_function()
Profile.print()
```
___
## [ProfileView.jl](https://github.com/timholy/ProfileView.jl)
```julia
using ProfileView
ProfileView.view()
```
___
## Profiling

How much memory does profiling use compared to running the program?

---
# Optimization

What are some examples of common (numerical) tasks in astronomy where people tend to make inefficient code?
___
## "Vectorization"

- Computing hardware
- Programming pattern
___
## Vectorization, hardware

CPUs
- SIMD
- SSE, SSE2, AVX, AVX512

GPUs
- Streamming Multiprocessor (SM)

___
## Vectorization, the Programming Pattern

Loops:  Efficient (in compiled languages), sometimes less convenient
```
N = 10000
x = randn(N)
y = randn(N)
r = similar(x)
for i in 1:length(x)
  r[i] = x[i] * y[i]
end
```
___
## Vectorization, the Programming Pattern
Sometimes more convenient
```
x = [1,2,3,4]
y = [5,6,7,8]
r = x * y
```
___
## Vectorization, the Programming Pattern

Sometimes more convenient
```
x = [1,2,3,4]
y = [5,6,7,8]
r = x * y
```
In interpretted languages, this is often less inefficient than writing a loop

___
## Vectorization, the Programming Pattern
Convenient, but increasingly inefficient
In Python
```
x = [1,2,3,4]
y = [5,6,7,8]
r = sum(sqrt(x * y))
```
___
## Vectorization: Programming Pattern
Convenient & Efficient
In Julia
```
x = [1,2,3,4]
y = [5,6,7,8]
r = sum(sqrt.(x .* y))
```
___
## Loops

Efficient (in compiled languages), sometimes more convenient
```
N = 10000
x = randn(N)
y = randn(N)
s = zero(eltype(x))
for i in 1:length(x)
  s += sqrt(x[i] * y[i])
end
```

---
## Commonly missed optimizations
- Choosing inefficient algorithms
- Memory layout
- Cache awareness
- Storing easily derived data in memory (rather than recomputing)
- Using well-optimized libraries (linear algebra, FFTs, etc.)
- What else?

---
## Programming Interfaces

Why bother?

---
## More questions

What are some of the orders of popular algorithms used in astronomical research?
---
# Questions?


---
## Generic programming
- Write functions to take multiple types
```julia
add(x, y) = x + y
```
How could this fail?
___
## Generic programming
- Write functions to take multiple types
```julia
add(x, y) = x + y
```
How could this fail?
```julia
x = ones(10)
y = zeros(10)
add(x,y)
```
___
## Generic programming
```julia
add(x::Real, y::Real) = x + y
add(x::Array{T1}, y::Array{T2}) where { T1<:Real, T2<:Real} = x .+ y
```
---

# Questions?

{{</revealjs>}}
