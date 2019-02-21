+++
title = "Exercises"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 03110  #wwdpp

chapter= false

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11 at psu dot edu"
+++


{{%excerpt%}}
<b>Memory Access, Disk I/O, DataFrames</b><br />
[Lab 3 Git Repository](https://github.com/PsuAstro528/lab3-start) (due Jan 27)

- Exercise 1: Benchmarking File I/O
- Exercise 2: DataFrames, Join, Query
- Exercise 3: Dense Matrix-Vector Multiply
{{%/excerpt%}}

## Lessons / Resources
- [Getting Started with Julia on ACI](/lessons/week1/how-to-use-aci)
- [Julia Manual](http://docs.julialang.org/en/v1.0/)
- [Think Julia: How to Think Like a Computer Scientist](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html)
- [Learn Julia in Y Minutes](https://learnxinyminutes.com/docs/julia/)
- [Regular expressions in julia](https://docs.julialang.org/en/v1/manual/strings/index.html#Regular-Expressions-1)
- [Astropy](http://docs.astropy.org)
- File Formats
   - [FITSIO library written in C](https://heasarc.gsfc.nasa.gov/fitsio/)
   - [HDF5](https://www.hdfgroup.org/solutions/hdf5/)
   - [Feather format](https://github.com/wesm/feather)
- Julia packages for reading files
   - [PyCall.jl documentation](https://github.com/JuliaPy/PyCall.jl#types).
   - [Julia's JLD2.jl package](https://github.com/JuliaIO/JLD2.jl)
   - [Julia's HDF5.jl package](https://github.com/JuliaIO/HDF5.jl)
   - [Julia's FITSIO.jl package](https://github.com/JuliaAstro/FITSIO.jl)
   - [Feather.jl](http://juliadata.github.io/Feather.jl/stable/)
   - [FileIO.jl](https://github.com/JuliaIO/FileIO.jl)
- [Querying DataFrames](http://juliadata.github.io/DataFrames.jl/stable/man/querying_frameworks.html).
   - [Query.jl](http://www.queryverse.org/Query.jl/stable/gettingstarted.html)
   - [DataFramesMeta.jl](https://github.com/JuliaData/DataFramesMeta.jl))
{{% children depth="1" %}}
