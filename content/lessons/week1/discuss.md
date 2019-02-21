+++
title = "Discussion Topics Week 1"
date = "8 Jan 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 01150  # wwdpp

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

Astro 528, Week 1

High-Performance Scientific Computing for Astrophysics

---

## What makes scientific software special?

Note:
Floating-point arithmetic, Numerically intensive, Large data sets, Sophisticated tool sets, Rapidly changing specifications.  All also show up in other applications.
___

## Comparing to Computer Software Industry

- How is scientific sofware development different?
-                                      ...similar?

---

## Floating Point Arithmetic

- When should we be paranoid?
- What can we do about it?

___

## Floating Point Arithmetic

- Would using extended precision number help?
  + DoubleFloats.jl: Double16, Double32, Double64
- When would it not help?

---
## Your Questions
How (often) to submit reading questions?
___

## Languages

- Why other langues slower?
- What is Julia _not_ good for?

---

# Questions about Lab
___
## One-pass versus a two-pass algorithm?
- What does `var(x)` do?
___
## Do I need to declare a variable's type?

Languages:

- Static (e.g., C/C++, Fortran)
- Dynamic (e.g., perl, Python)
- Optional (Julia)
___

## Julia's Type Heirarchy

- Float32 <: Real
- Float64 <: Real
- Real <: Number
- Int64 <: Integer
- Integer <: Real

---

## Testing

- How can you test a code solving an unsolved problem?
- Does it make sense for scientific codes?

---

## Is anyone going to reuse my code?
___

## How to ease code reuse
- Correctness?
- Efficiency?
- Likelihood?

---

## Your experiences
- Programming
- Size of project/team

___

## Your experiences
- Testing (or lack thereof)
- Floating-point arithmetic gotchas
- Someone reusing your code
- Favorite Software development practices

---

# Questions?
- [Queue for help with lab](https://classroomq.com/students/):
- Class Code: EI59CV

{{</revealjs>}}
