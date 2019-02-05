+++
title = "Discussion Topics Week 5"
date = "5 Feb 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
type = "page"
hidden = false
weight = 05150  # wwdpp
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
---
## Projects

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

What dimension(s) will you parallelize over?

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
---
## Cross-language issues

If we used PyCall in Julia to make an array in Python (which is row-major), would it end up being stored in column-major or row-major order?
___

## Conditionals inside a loop
- Can they be avoided?  If not...
   - CPU will try to predict which branch to take
   - GPUs generally stall while running each case
- Prefer smaller conditional code segments 
- Make it easy to predict correctly (?)
## What 

What are some of the orders of popular algorithms used in astronomical research? 



---
# Optimization
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
## "Vectorization"

- Computing hardware
- Programming pattern
___
## Loops

```
x = [1,2,3,4]
y = [5,6,7,8]
r = similar(x)
for i in 1:length(x)
  r[i] = x[i] * y[i]
end
```

___
## Vectorization: Programming Pattern
Convenient, but inefficient
```
x = [1,2,3,4]
y = [5,6,7,8]
r = sum(x * y) 
```
___
## Vectorization: Programming Pattern
Convenient & Efficient
```
x = [1,2,3,4]
y = [5,6,7,8]
r = sum(x .* y) 
```


It seems like where variables are stored (e.g. on the stack, in the memory heap, etc.) just depends on the language we are programming in. Is this something we actually need to think about when we are coding or when we are choosing a language to use? Does it really make that much of a difference?

What are some examples of common (numerical) tasks in astronomy where people tend to make inefficient code? In other words, what are some typical astronomy applications where we can really make a difference by maximizing the performance of the CPU/memory architecture?



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
