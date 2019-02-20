+++
title = "Automated Testing"
weight = 129
type="page"

# Creator's Display name
creatordisplayname = "Eric Ford"
# Creator's Email
creatoremail = "ebf11 at psu dot edu"
# LastModifier's Display name
lastmodifierdisplayname = "Eric Ford"
# LastModifier's Email
lastmodifieremail = "ebf11 at psu dot edu"
+++

{{%excerpt%}}
## Setting up continuous integration testing

Some students asked about how to make the continuous integration testing with Travis-CI work.  The short version is:

1.  _Make sure your `Project.toml` file contains all the packages that you explicitly use._  You can do this by running
```julia
using Pkg
Pkg.activate(".")  # Specify that the current directory should contain a Project.toml and Manifest.toml file describing your current project
Pkg.add("WhateverPackagesYouNeed")
```
2.  _Replace the `test/runtests.jl` file_ with something simpler that runs the teests you want run.  For the labs, I wrote a script that looked for notebooks, julia scripts or markdown scripts named `ex?.{ipynb,jmd,jl}` and ran one for each exercise.  Since you know exactly what files contain the test you want to run, your runtests.jl can be something very simple like
```julia
using Pkg
Pkg.activate(".")
include("../src/file_with_my_project_code.jl")
include("file_with_your_first_set_of_tests.jl")
include("file_with_your_second_set_of_tests.jl")
```
If your code is in Jupyter notebooks, then make sure NBInclude is among the packaged you added above and use `@nbinclude` to tell it to run the desired notebook.
```julia
using Pkg
Pkg.activate(".")
using NBInclude
@nbinclude("../src/notebook_with_your_project_code.ipynb")
include("file_with_your_first_set_of_tests.jl")
```
Make sure that the the code you're testing also gets loaded somewhere.  If you only have one file with tests, then it might be easiest for that file to load the code.  But if later you have multiple files with tests, then it might be better to have the main code included by runtests.jl, so that the main code is only included once.

3.  _Make sure you have a `.travis.yml` file_ in your repository's root directory.  If you started your project repository after the template, that's probably all you need to do.  If you started your own repo clean, then you'll need to add a `.travis.yml` file to the root directory of your repository.  See the lab repositories for examples.  Whenever Travis-CI is triggered to try to build your repository, it will follow the instructions in the `.travis.yml` file.  If you copied the one from a recent lab, it probably does something like
```sh
cp Project.toml test/
julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate();'
julia -e 'cd("test"); using Pkg; Pkg.activate("."); Pkg.instantiate();'
julia test/runtests.jl
```
The first line is just copying the Project.toml file into the test directory, so the standard `Pkg.activate(".")` will activate the same things as for the root directory.  The second and third lines are telling the virual machine on Travis to install all the packages that you've added to the project.  (The two lines are redundant since we've copied the exact same Project.toml file.  But if we had separate Project.toml files it might matter.)  The final line tell's julia to run the file `test/runtests.jl`.  You could add more commands to the `.travis.yml` file or you could have a simple `test/runtests.jl` that call multiple scripts like
```julia
using Pkg
Pkg.activate(".")
include("../src/file_with_my_project_code.jl")
include("file_with_your_first_set_of_tests.jl")
include("file_with_your_second_set_of_tests.jl")
```
If you are using a language other than julia, then you'd need to edit the earlier lines of the `.travis.yml` to tell it what languages (and what versions of those languages) should be installed on the virutal machine that will be used to test your code.  

4. _Commit, push, and check on the status of your build via [Travis-CI.com](https://travis-ci.com/).  Yes, it can be a bit of a pain to setup.  But once it is, it's nice to know as soone as someone (whether you or a collaborator) push a commit that breaks a test.  Good luck.  


{{%/excerpt%}}



