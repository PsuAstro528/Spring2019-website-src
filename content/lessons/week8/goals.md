+++
title = "Learning goals"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 08103  #wwdpp

chapter= false
hidden = false

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11 at psu dot edu"
+++

# Week 8

{{%excerpt%}}
- Lab 5, Exercise 2
   - Choose an appropriate number of worker processors for your compute node
   - Load code and packages on worker nodes
   - Parallelize code using pmap
   - Parallelize code using SharedArray's
   - Parallelize code using map and mapreduce on DistributedArray's
   - Parallelize code using @distributed for loop
   - Parallelize code using Threads.@threads
- Project
   - Provide constructive feedback in code review
   - Use [GitHub Issues](https://guides.github.com/features/issues/) to manage tasks for code base
- Readings / Discussions
   - Evaluating the suitability of a problem for different parallel architectures
{{%/excerpt%}}

## Lessons along the way
- Reinforce programming patterns demonstrated in Lab 5, Exercise 2
   - Organize code into files and a [module](https://docs.julialang.org/en/v1/manual/modules/index.html)
   - Using [function-like objects](https://docs.julialang.org/en/v1/manual/methods/#Function-like-objects-1)
   - Using [broadcasting](https://docs.julialang.org/en/v1/base/arrays/#Broadcast-and-vectorization-1)
   - Using [abstract types](https://docs.julialang.org/en/v1/manual/types/#Abstract-Types-1)
   - Using [parametric types](https://docs.julialang.org/en/v1/manual/types/#Parametric-Types-1)
