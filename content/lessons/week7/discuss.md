+++
title = "Discussion Topics Week 7"
date = "19 Feb 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 06150  # wwdpp

chapter= false
hidden = false

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11 at psu dot edu"

type = "slide"
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

<revealjs theme="psu" transition="slide" controls="true" progress="true" history="false" center="false" loop="false" pdfSeparateFragments="false" showNotes="true" pdfMaxPagesPerSlide="1" >
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



---
# Questions?
</revealjs>
