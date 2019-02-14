+++
title = "Discussion Topics Week 6"
date = "5 Feb 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
type = "page"
hidden = false
weight = 06150  # wwdpp
+++


{{<revealjs theme="psu" transition="slide" controls="true" progress="true" history="false" center="false" loop="false" pdfSeparateFragments="false" showNotes="true" >}}
# Astro 528, Week 6

High-Performance Scientific Computing for Astrophysics

---
## Logistics
___
## Lab 4:
Will review a few items today
___
## Lab 5:
Will push to next week
---
# Projects
___
## Project Timeline
- Serial version of code (due Feb 21)
- Peer code review (due Feb 28)
- Parallel version of code (multi-core) (due March 28)
___
## Grading Rubric for Serial Version of Code
### Tasks & Tests
- Code performs proposed tasks
- Comprehensive set of unit tests, at least one integration or regression test
- Code passes tests
___
## Grading Rubric for Serial Version of Code
### Version Conrol
- Student code uses a version control system effectively
- Repository includes many regular, small commits
___
## Grading Rubric for Serial Version of Code
### Modularity
- Code is modular, rather than having chunks of same code copied and pasted
- Documentation for functions' purpose and design
- Comprehensive set of assertions
___
## Grading Rubric for Serial Version of Code
### Style
- Variable/function names consistent, distinctive & meaningful
- Useful & consistent code formatting & style
___
## Preping for Code Review
### Make it easy for your reviewer
- Provide overview of what it's doing in README.md
- What files should they focus on?
- What files should they ignore?
- Where should they start?
- Include an example of how to run/use code

___
## Preping for Code Review
### Make it easy for you
If large code, then
- Move out of notebooks and into `.jl` files, as functions mature.
- Organize functions into files `.jl` files in `src` directory
- Use `test`, `examples`, `docs` directories
---

# Reading Questions
___
## Can I turn off branch prediction?
- No (at least not on modern CPUs)
- Does thinking about it make a difference?
___
## Memory Layout
Are allocated blocks of memory always contiguous?

How does the computer "know" which blocks go together?
___
## Debuggers
- gdb
- Jupyter notebook extensions
- IDEs
___
## Garbage Collection
Is there any advantage to preemptively garbage-collecting before you run out of available memory?
___
## Moore's Law
![Moore's Law](https://www.karlrupp.net/wp-content/uploads/2015/06/35years.png)
- How far are we from an end of increasing performance via hardware alone?
___
## Balancing performance vs readability
How should someone manage the trade-off between writing highly optimized code that is straight-forward and easy to read?
___
## Inling vs separate functions
- Performance:  Pros, cons
- Readability
- Maintainability
---
## Generic programming
- Write functions to take multiple types
```julia
add(x, y) = x + y
```
___
## Generic programming
- Write functions to take specific types
```julia
apply(f::Function, x) = f(x)
```
___
## Generic programming
- Write functions to take specific types

```julia
apply(f::Function, x) = f(x)

square(x) = x*x
x = 2
apply(square,x)
```
- How could this fail?
___
## Generic programming
### How could this fail?
```julia
apply(f::Function, x) = f(x)
square(x) = x*x
x = [1,2,3]
apply(square,x)
```
___
## Generic programming
### Overload function
```julia
apply(f::Function, x::Number) = f(x)
apply(f::Function, x::Array) = f.(x)
```
___
## Generic programming
### Making it even more general
```julia
apply(f::Function, x::AbstractArray) = f.(x)

apply(f::Function, x::AbstractArray{T}) where { T<:Real } = f.(x)
```
---
# Programming Interfaces
___
## No Programming Interface
```julia
struct Coord
   x::Float64
   y::Float64
end
pos = Coord(1,2)
pos.x
pos.y
sqrt(pos.x^2+pos.y^2)
```
___
## With Programming Interface
```julia
struct Coord
   x::Float64
   y::Float64
end
x(p::Coord) = p.x
y(p::Coord) = p.y
r(p::Coord) = sqrt(p.x^2+p.y^2)
theta(p::Coord) = atan(p.y,p.x)
```
___
## Why a Programming Interface?
___
## New Implementation, same interface
```julia
struct Coord
   r::Float64
   theta::Float64
end
x(p::Coord) = p.r*cos(p.theta)
y(p::Coord) = p.r*sin(p.theta)
r(p::Coord) = p.r
theta(p::Coord) = p.theta
```
___
## Abstract Types
```julia
abstract type AbstractCoord end
struct CartesianCoord <: AbstractCoord
   x::Float64
   y::Float64
end
struct PolarCoord <: AbstractCoord
   r::Float64
   theta::Float64
end
```
___
## Overloading Functions for each Type
```julia
x(p::CartesianCoord) = p.x
y(p::CartesianCoord) = p.y
x(p::PolarCoord) = p.r*cos(p.theta)
y(p::PolarCoord) = p.r*sin(p.theta)
```
___
## Overloading Functions for each Type
```julia
function dist(a::AbstractCoord,b::AbstractCoord)
   dx = x(a)-x(b)
   dy = y(a)-y(b)
   sqrt(dx^2+dy^2)
end
```
___
## Containers of Abstract Types
```julia
function dist(a::Array{AbstractCoord},b::Array{AbstractCoord})
   dx = x.(a)-x.(b)
   dy = y.(a)-y.(b)
   sqrt.(dx.^2.+dy.^2)
end
```
___
## Containers of Abstract Types
```julia
function dist(a::Array{T1},b::Array{T2})
   where { T1<:AbstractCoord, T2<:AbstractCoord}
   dx = x.(a)-x.(b)
   dy = y.(a)-y.(b)
   sqrt.(dx.^2.+dy.^2)
end
```
---

# Questions?

{{</revealjs>}}
