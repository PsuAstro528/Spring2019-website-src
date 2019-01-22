+++
title = "Discussion Topics Week 3"
date = "17 Jan 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
type = "page"
hidden = false
weight = 03150  # wwdpp
+++


{{<revealjs theme="psu" transition="slide" controls="true" progress="true" history="false" center="false" loop="false" pdfSeparateFragments="false" showNotes="true" >}}
# Discussion Topics

Astro 528, Week 3

High-Performance Scientific Computing for Astrophysics

---

## Logistics
___
## Homework  

- Good job!
- I'll aim for a little shorter
___
### If Jupyter notebook server ask for a password, ACI suggests:
- ending that session
- clearing browser cache
- restarting browser
- logging in again
___
### Alternative workaround
From Portal [http://portal.aci.isc.psu.edu], 

start an "Interactive Desktop"
```shell
module load python
julia -e 'using IJulia; notebook()'
```
___
### ACI Shutdown

- Scheduled: 5pm Fri, Jan 25 - 8am, Mon, Jan 28
- Make sure to commit and push changes before shutdown begins
- Could use JuliaBox, local machine (direct install or Docker)
- Feel free to submit PR's over the coming week (say by morning of Feb 4)
- Project Proposal still due Jan 31
___
###  

---
# Lab 2 Feedback
___
## Garbage collection
- Why?
- Impact on benchmarking
___
## Scaling of Runtime vs Array-size
- Non-linear
- Differences for arithmetic vs trig function as function of size
- Conclusion? 

___
## How long to integrate 10^8 orbits?

- Some people tried to do it
- Function exited in ~3 seconds
- There was a warning message:
```
┌ Warning: Interrupted. Larger maxiters is needed.
└ @ DiffEqBase /storage/home/aub1461/work/julia_depot/packages/DiffEqBase/8usQ9/src/integrator_interface.jl:150
```
- Integrating for 1e8 years would take...
- Importance of good warning messages
---
## Increasing chances of correctness

- Modular code (functions)

When modularizing code, how does one go about efficiently organizing functions, constants, etc?

___

## Increasing chances of correctness

Reduce risk of interpretting inputs incorrectly
  + Descriptive Names
  + Assertions to document/enforce pre-conditions
  + Specify types for function inputs
  + Named parameters
  + Passing composite types, rather than several values

---
# Documentation

Who is it for?
___
## What to Document?
___
## What to Document?

- Code can be a form of documentation!
- Why add anything more?
- Interfaces:  Inputs, outputs, pre/post-conditions
- Reasons for design choices
___
## Dangers of Documentation
___
## Dangers of Documentation

- Inaccurate
- Out of date
___
## Avoiding Out-of-date Documentation

- Write documentation in code
- Provide examples as documentation
- Documentation generators (e.g., Documenter.jl)
___

## Documentation tools

- Documenter.jl:  Examples & tests become one
- Doxygen: Good for object oriented codes in C++/Java/Python
- Other packages people like?

---
# Questions

## Performance considerations
___
Is it actually practical to implement code review in Astronomy?

Often teams are small and/or time is a limiting factor.
___

"Do we really need to worry about row-major vs. column-major order?"

___

"I’ve never heard of scratch space or had to explicitly worry about allocating memory...

Do higher level languages just handle this for us?"

---
## Your experiences

- Premature optimization
- Documentation
- Collaboration
---

## Increasing chances of correctness

- Setup automatic testing
- Use version control
- Make and comit small changes
- Test frequently
- Turn bugs into tests

___

## Continuous Integration

- When is it important?
- When is it optional?
- Are there other places that continuous integration would be useful for your science?

---
## Collaborate

- Pair coding
- Peer code reviews
- Commit & test often
- Test/Review prior to merging
- Track issues


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
