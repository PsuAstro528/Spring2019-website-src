+++
title = "Learning goals"
weight = 07103  #wwdpp
type="page"
chapter= false

# Creator's Display name
creatordisplayname = "Eric Ford"
# Creator's Email
creatoremail = "ebf11 at psu dot edu"
# LastModifier's Display name
lastmodifierdisplayname = "Eric Ford"
# LastModifier's Email
lastmodifieremail = "ebf11 at psu dot edu"
+++

# Week 7
{{%excerpt%}}
- Exercise 1
   - Read & write models using a probabilistic programming language
   - Estimate uncertainties in model parameters using Markov chain Monte Carlo
- Exercise 2
   - Choose an appropriate number of worker processors for your compute node
   - Load code and packages on worker nodes
   - Parallelize code using pmap
   - Parallelize code using SharedArray's
   - Parallelize code using map and mapreduce on DistributedArray's
   - Parallelize code using @distributed for loop
   - Parallelize code using Threads.@threads
{{%/excerpt%}}

## Lessons along the way
- Statistical inference
   - Posterior Sampling
   - Heirarchical models
   - Markov chain Monte Carlo
- Reinforce programming patterns demonstrated in Lab 5, Exercise 2:
   - Organize code into files and a [module](https://docs.julialang.org/en/v1/manual/modules/index.html)
   - Using  [function-like objects](https://docs.julialang.org/en/v1/manual/methods/#Function-like-objects-1)
   - Using [broadcasting](https://docs.julialang.org/en/v1/base/arrays/#Broadcast-and-vectorization-1)
   - Using [abstract types](https://docs.julialang.org/en/v1/manual/types/#Abstract-Types-1)
   - Using [parametric types](https://docs.julialang.org/en/v1/manual/types/#Parametric-Types-1)

