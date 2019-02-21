+++
title = "Creating lab assignments"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 1100
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "ebf11 at psu dot edu"
lastmodifieremail = "ebf11@psu.edu"
+++

# Workflow for creating lab assignments

### Create Development repostiory from template:
   - Create an empty _private_ repository named labN-dev at GitHub.
      + Go to https://github.com/PsuAstro528, click New
      + Repository Name: labN-dev
      + Description: Lab N
      + Private
      + Uncheck Initialize README, .gitignore: None, License: None
      + Create repository- Change into directory of lab exercises
   - Change into directory of lab exercises `cd ~/Teach/Astro528/Spring2019/exercises`
   - `git clone git@github.com:PsuAstro528/labN-dev.git`
   - `cd labN-dev`
   - copy files from template repository (lab-template) into labN-dev directory

```shell
cp ../lab-template/{.gitignore,.travis.yml} .
cp ../lab-template/{.gitignore,.travis.yml,docker-compose.yml,environment.yml,LICENSE,README.md,REQUIRE} .
cp -r ../lab-template/test .
```

### Commit template files to master branch:

```shell
git add .gitignore .travis.yml docker-compose.yml environment.yml LICENSE README.md REQUIRE test
git commit -m "template"
git push
```
### Create & Switch to solution branch

```shell
git checkout -b solution
```
### Make exercises (named exN.ipynb) and tests (named test/testN.jl)
   - Indicate code to be removed with SOLUTION in comments so easy to find.

```shell
git add ex?.ipynb test/test?.jl
git commit -m "new exercise"
```
   - Test each exercise as you go `julia -e 'include("test/test1.jl")'`
   - Test as a group `julia -e 'include("test/runtests.jl")'`

### Setup Project.toml
Once assignments is ready for Travis-CI.com to test thea, create/update the Project.toml file in test directory to include needed packages

```julia
cd("test")
]
activate .
add NBInclude
add Weave
add Glob
```

Add Project.toml to the repo and make remote solution branch track local solution branch
```shell
git add test/Project.toml
git commit -m "for exN"
git push -u origin solution`
```

### Check solution passes CI testing

Check status of test at https://travis-ci.com/PsuAstro528/labN-dev/ .


### Make Julia Markdown version of solutions

- Once it passes tests using Travis-CI and you're ready to share, use Weave package to convert notebooks into jmd files.

```shell
julia -e 'using Weave; convert_doc("ex1.ipynb","ex1.jmd");'
julia -e 'using Weave; convert_doc("ex2.ipynb","ex2.jmd");'
julia -e 'using Weave; convert_doc("exN.ipynb","exN.jmd");'
```

- Add and commit exN.jmd to solution branch

```shell
git add ex?.jmd; git commit -m "convert from ipynb"
```

- Checkout master branch and add jmd files from solution branch
```shell
git checkout master
git checkout solution exN.jmd
git checkout solution test/testN.jl
```

- Edit each exN.jmd to remove code
   - Search for SOLUTION and remove code not for students to see
   - (Note to future self: Should I automate this?)

   - Recreate cleaned notebook files exN.ipynb

```shell
julia -e 'using Weave; convert_doc("ex1.jmd","ex1.ipynb");'
julia -e 'using Weave; convert_doc("ex2.jmd","ex2.ipynb");'
julia -e 'using Weave; convert_doc("exN.jmd","exN.ipynb");'
```

   - Check that you're happy with the resulting notebooks, then add & commit them to master branch.

```shell
git add ex?.jmd ex?.ipynb test/test?.jl
git commit -m "cleaned ex"
git push
```

### Create Starer Repository for Students
Create starter repostiory on GitHub.com from development repository

   - Create an empty public lab named labN-start at GitHub as part of the organization for the class.
      + Go to https://github.com/PsuAstro528, click New
      + Description: Lab N:  List super-short lesson goals
      + Public
      + Uncheck Initialize README, .gitignore: None, License: None
      + Create repository
   - Change into directory of lab exercises `cd ~/Teach/Astro528/Spring2019/exercises`
   - `cp -r labN-dev labN-start`
   - `cd labN-start`
   - Make _sure_ you're in the labN-start subdirectory
   - `rm -f .git`
   - `git init`
   - `git remote add origin git@github.com:PsuAstro528/labN-start.git`
   - Edit .travis.yml to no longer just test solution and now exclude original branch

```shell
git add *
git add .gitignore .travis.yml
git commit -m "init"
git push --set-upstream origin master
```

Make original branch for comparison purposes
```shell
git checkout -b original
git push -u origin original
git checkout master
```

Check that you're happy with the labN-start repository

### Distribute new laboratory assignment
Go to https://classroom.github.com/classrooms

   - Choose class
   - New Assignment
   - Create an Individual Assignment
      -  Title: Astro 528 Lab N
      -  Repo prefix: labN
      -  Private
      -  Enable assignment invitation URL
      -  Add your starter code from GitHub:  https://github.com/PsuAstro528/labN-start
      - Deadline: Sunday 23:59pm
      - Create Assignment
   -  Copy Invitation Link and send it to students in a Canvas announcement
