+++
title = "Discussion Topics Week 11"
date = "26 March 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 10150  # wwdpp

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
pdfMaxPagesPerSlide=1
+++

{{<revealjs theme="psu" transition="slide" controls="true" progress="true" history="false" center="false" loop="false" pdfSeparateFragments="false" showNotes="true" pdfMaxPagesPerSlide="1" >}}
# Astro 528, Week 11

High-Performance Scientific Computing for Astrophysics
---
# Projects
___
### Project Timeline
- First parallel version of code (multi-core) (due March 28)
- Second parallel version of code (distributed/GPU/etc) (due April 18)
- Completed code, documentation, benchmarks, conclusions (due April 18)
- Presentations (April 9-25)
___
### Rubric for Parallel Code
- Choice of portion of code to parallelize
- Choice of approach for parallelizing code
- Code performs proposed tasks
- Unit/regression tests comparing serial & parallel versions
- Code passes tests
- General code efficiency
- Implementation/optimization of multi-core parallelization
- Significant performance improvement
---
## git-lfs on ACI
```shell
export PATH=/gpfs/group/dml129/default/sw/git-lfs:$PATH
module load git
git lfs install
```
___
## Tracking large files with git-lfs
```shell
git lfs track "data/big.fits"
git lfs track "*.jld2"
git lfs track "data/*"
```
Add/commit/push as ususal
___
## Rewriting git history
- [BFG Repo Cleaner](https://rtyley.github.io/bfg-repo-cleaner/
- [More detailed explanation](https://help.github.com/en/articles/removing-sensitive-data-from-a-repository)

Usage:
```bash
java -jar bfg.jar --delete-files id_dsa  my-repo.git
```

---
# Reproducibility
- What does that mean to you?
___
# Reproducibility
- Scientific results are robust
- Precise description of calculations
- Same calculations yield same results
- Installing same software to do calculations
- Installing same/updated versions of software
---
## Distributing Software
___
## Distributing Software
Old school
- tarball
- Makefile with variables to set for your system
- make (or Cmake) to compile code/build libraries/install
- examples & test cases
- README and manual
___
### Problems
- Hard to find
- Different versions of code
- Installing dependancies
- Assume dependances in standard locations
- Require root to add files to standard locations
- Security risks
- Multiple users/projects on one machine
___
## Distributing Software
Modern
- Package software in standardized way
- Automated build script
- Distribute package
   - url
   - Registry of packages
- "Publish" software
___
## Using Packaged Software
- Install packages via a package manager
- Package manager finds & install dependancies
- Package manager figures out versions to make packages work together
- Files installed in user space
- Save files defining your environment
- Activate a project to specify which versions were used
---
# Make
(because we'll all still need it for years to come)
___
## Using Make
```shell
make
make edit
make clean
make all
```
___
### [Simple Makefile](https://www.gnu.org/software/make/manual/html_node/Simple-Makefile.html)
```make
edit : main.o kbd.o command.o display.o \
       insert.o search.o files.o utils.o
        cc -o edit main.o kbd.o command.o display.o \
                   insert.o search.o files.o utils.o

main.o : main.c defs.h
        cc -c main.c
kbd.o : kbd.c defs.h command.h
        cc -c kbd.c
command.o : command.c defs.h command.h
        cc -c command.c
display.o : display.c defs.h buffer.h
        cc -c display.c
insert.o : insert.c defs.h buffer.h
        cc -c insert.c
search.o : search.c defs.h buffer.h
        cc -c search.c
files.o : files.c defs.h buffer.h command.h
        cc -c files.c
utils.o : utils.c defs.h
        cc -c utils.c
clean :
        rm edit main.o kbd.o command.o display.o \
           insert.o search.o files.o utils.o
```
___
### [Realistic Makefile](https://www.gnu.org/software/make/manual/html_node/make-Deduces.html#make-Deduces)
```make
objects = main.o kbd.o command.o display.o \
          insert.o search.o files.o utils.o

edit : $(objects)
        cc -o edit $(objects)
#        $(CC) $(CFLAGS) $(LDFLAGS) -o edit $(objects)

main.o : defs.h
kbd.o : defs.h command.h
command.o : defs.h command.h
display.o : defs.h buffer.h
insert.o : defs.h buffer.h
search.o : defs.h buffer.h
files.o : defs.h buffer.h command.h
utils.o : defs.h
# Above use implicit rule for c files with imiplicit variables
# %.o: %.c
#        ‘$(CC) $(CPPFLAGS) $(CFLAGS) -c

.PHONY : clean
clean :
        rm edit $(objects)
```
___
#### When should we use `make` instead of shell scripts?
___
## When should we use `make`?
For self:
- Chain of build commands
- Avoid mistakes in compilation process
- Reduce build time
___
## When should we use `make`?
For others:
- Simplifiy configuration of build process
- C/C++/Fortran/CUDA (languages w/o package manager)
- Not Julia/perl/python/R (languages w/ package manager)
- Simple data processing pipelines
- If complex decissions... Cmake?
---
# Julia Package manager
___
## Adding packages
```julia
julia> using Pkg
julia> Pkg.activate(".")
julia> Pkg.add("Plots")
```
or
```julia
julia> ]
pkg> activate .
pkg> add Plots
```
___
## Registered vs Unregistered packages
```julia
julia> ]
pkg> add CORBITS
pkg> add git@github.com:eford/CORBITS.jl.git
```
___
## Creating your own package
```julia
(v1.0) pkg> generate HelloWorld
HelloWorld
├── Project.toml
└── src
    └── HelloWorld.jl
```
___
## Adding dependancies to your package
```julia
julia> cd("HelloWorld")
julia> ]
(v1.0) pkg> activate .
(HellowWorld) pkg> add Distributions
```
___
#### Project.toml
```shell
name = "HelloWorld"
uuid = "b4cd1eb8-1e24-11e8-3319-93036a3eb9f3"
version = "0.1.0"
author = ["Some One <someone@email.com>"]
[deps]
Distributions = "31c24e10-a181-5473-b8eb-7969acd0382f"
```
___
## Common optional package features
```shell
deps/build.jl    # Automated building via Pkg.build("PkgName")
test/runtests.jl # Automated testing via Pkg.test("PkgName")
.travis.yml      # Continuous Integration Testing via Travis-CI
LICENSE[.md]     # Communicate your expectations to users
README[.md]      # Help out potential users
```
___
## Additional optional package features
```shell
.gitignore       # Tell git to ignore certain files
.gitattributes   # Additional git config, e.g., git-lfs
docs/make.jl     # How to build documentation [Documenter.jl](https://juliadocs.github.io/Documenter.jl/latest/man/guide/#Package-Guide-1)
docs/src/        # Directory with documentation soure code
appveyor.yml     # CI for Windows & Linux via AppVeyor
```

___
## Coverage Checking
- [CodeCov](https://codecov.io)
- [Coverails](https://coveralls.io/)

Run coverage checking from your Travis via .travis.yml file
```shell
  - julia -e 'using Pkg; cd(Pkg.dir("PkgName")); Pkg.add("Coverage"); using Coverage; Codecov.submit(Codecov.process_folder())'
  - julia -e 'using Pkg; cd(Pkg.dir("PkgName")); Pkg.add("Coverage"); using Coverage; Coveralls.submit(process_folder())'
```
---
## Sharing Notebooks
- [nbviewer](https://nbviewer.jupyter.org/)
- [Binder](https://mybinder.org/)
___
## [Binder](https://mybinder.org/): Julia
REQUIRE
```shell
julia 1
Distributions
PyPlot
```
___
## [Binder](https://mybinder.org/): Python
environment.yml
```shell
dependencies:
  - matplotlib
  - numpy
  - pip
  - pip:
      - julia
```
___
## [Binder example](https://nbviewer.jupyter.org/github/PsuAstro528/lab2-start/blob/master/ex1.ipynb)
---
## Virtual Machines
- VMWare
- VirtualBox
___
## Containers
- [Docker](https://www.docker.com/why-docker) (more common)
- [Singularity](https://www.sylabs.io/singularity/) (required for ACI)
___
### Install Docker
- Install [Docker CE](https://docs.docker.com/get-started/).
   - If using consumer Windows, may need to be inside VirtualBox
- Make sure `docker run hello-world` works before proceeding.
___
### Run the Docker image

The following command will spin up a container with this image and enter you into bash.

```bash
docker run -it --rm psuastro528/notebook bash
```
___
## [Dockerfile for Labs](https://github.com/PsuAstro528/notebook)

```shell
# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

# Set when building on Travis so that certain long-running build steps can
# be skipped to shorten build time.
ARG TEST_ONLY_BUILD

USER root

# R pre-requisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    fonts-dejavu \
    tzdata \
    gfortran \
    gcc && \
    rm -rf /var/lib/apt/lists/*

# Julia dependencies
# install Julia packages in /opt/julia instead of $HOME
ENV JULIA_DEPOT_PATH=/opt/julia/depot
ENV JULIA_PKGDIR=/opt/julia/pkgdir
ENV JULIA_VERSION=0.7.0
ENV PYTHON=/opt/conda/bin/python

# First install v0.7.0 to help debug old packages/examples
RUN mkdir /opt/julia-${JULIA_VERSION} && \
    cd /tmp && \
    wget -q https://julialang-s3.julialang.org/bin/linux/x64/`echo ${JULIA_VERSION} | cut -d. -f 1,2`/julia-${JULIA_VERSION}-linux-x86_64.tar.gz && \
    echo "35211bb89b060bfffe81e590b8aeb8103f059815953337453f632db9d96c1bd6 *julia-${JULIA_VERSION}-linux-x86_64.tar.gz" | sha256sum -c - && \
    tar xzf julia-${JULIA_VERSION}-linux-x86_64.tar.gz -C /opt/julia-${JULIA_VERSION} --strip-components=1 && \
    rm /tmp/julia-${JULIA_VERSION}-linux-x86_64.tar.gz

# Now install a recent version v1.*
ENV JULIA_VERSION=1.0.2
RUN mkdir /opt/julia-${JULIA_VERSION} && \
    cd /tmp && \
    wget -q https://julialang-s3.julialang.org/bin/linux/x64/`echo ${JULIA_VERSION} | cut -d. -f 1,2`/julia-${JULIA_VERSION}-linux-x86_64.tar.gz && \
    echo "e0e93949753cc4ac46d5f27d7ae213488b3fef5f8e766794df0058e1b3d2f142 *julia-${JULIA_VERSION}-linux-x86_64.tar.gz" | sha256sum -c - && \
    tar xzf julia-${JULIA_VERSION}-linux-x86_64.tar.gz -C /opt/julia-${JULIA_VERSION} --strip-components=1 && \
    rm /tmp/julia-${JULIA_VERSION}-linux-x86_64.tar.gz
RUN ln -fs /opt/julia-${JULIA_VERSION}/bin/julia /usr/local/bin/julia

# Show Julia where conda libraries are \
RUN mkdir /etc/julia && \
    echo "push!(Libdl.DL_LOAD_PATH, \"$CONDA_DIR/lib\")" >> /etc/julia/juliarc.jl && \
    # Create JULIA_PKGDIR \
    mkdir /opt/julia && \
    mkdir $JULIA_PKGDIR && \
    chown $NB_USER $JULIA_PKGDIR && \
    mkdir $JULIA_DEPOT_PATH && \
    chown $NB_USER $JULIA_DEPOT_PATH && \
    fix-permissions $JULIA_DEPOT_PATH && \
    fix-permissions $JULIA_PKGDIR

USER $NB_UID

# Astropy
RUN conda install astropy --yes

# Module for PyCall
RUN conda install pyqt --yes

# Install Jupyter notebook extensions
RUN conda install -c conda-forge jupyter_contrib_nbextensions --yes
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable code_font_size/code_font_size
RUN jupyter nbextension enable codefolding/main
RUN jupyter nbextension enable exercise2/main
RUN jupyter nbextension enable rubbermand/main
RUN jupyter nbextension enable scratchpad/main
RUN jupyter nbextension enable spellchecker/main
RUN jupyter nbextension enable toc2/main
RUN jupyter nbextension enable tree-filter/index


# Allow python to call Julia
RUN python3 -m pip install --user julia --no-warn-script-location

# R packages including IRKernel which gets installed globally.
RUN conda install --quiet --yes \
    'rpy2=2.8*' \
    'r-base=3.4.1' \
    'r-irkernel=0.8*'
#    'r-plyr=1.8*' \
#    'r-devtools=1.13*' \
#    'r-tidyverse=1.1*' \
#    'r-shiny=1.0*' \
#    'r-rmarkdown=1.8*' \
#    'r-forecast=8.2*' \
#    'r-rsqlite=2.0*' \
#    'r-reshape2=1.4*' \
#    'r-nycflights13=0.2*' \
#    'r-caret=6.0*' \
#    'r-rcurl=1.95*' \
#    'r-crayon=1.3*' \
#    'r-randomforest=4.6*' \
#    'r-htmltools=0.3*' \
#    'r-sparklyr=0.7*' \
#    'r-htmlwidgets=1.0*' \
#    'r-hexbin=1.27*' && \
#    conda clean -tipsy && \
RUN    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Add Julia packages. Only add HDF5 if this is not a test-only build since
# it takes roughly half the entire build time of all of the images on Travis
# to add this one package and often causes Travis to timeout.
#
# Install IJulia as jovyan and then move the kernelspec out
# to the system share location. Avoids problems with runtime UID change not
# taking effect properly on the .local folder in the jovyan home dir.

# First for v0.7
RUN /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.update()' && \
    /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.add("Glob")' && \
    /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.add("NBInclude")' && \
    /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.add("Weave")' && \
    /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.add("Conda")' && \
    /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.add("PyCall")' && \
    /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.add("LaTeXStrings")' && \
    /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.add("PyPlot")' && \
    /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.add("Plots")' && \
    /opt/julia-0.7.0/bin/julia -e 'import Pkg; Pkg.add("IJulia")' && \
    /opt/julia-0.7.0/bin/julia -e 'using Glob' && \
    /opt/julia-0.7.0/bin/julia -e 'using NBInclude' && \
    /opt/julia-0.7.0/bin/julia -e 'using Weave' && \
    /opt/julia-0.7.0/bin/julia -e 'using Conda' && \
    /opt/julia-0.7.0/bin/julia -e 'using PyCall' && \
    /opt/julia-0.7.0/bin/julia -e 'using LaTeXStrings' && \
    /opt/julia-0.7.0/bin/julia -e 'using PyPlot' && \
    /opt/julia-0.7.0/bin/julia -e 'using Plots' && \
    /opt/julia-0.7.0/bin/julia -e 'using IJulia'

# Now for v1.*
RUN julia -e 'import Pkg; Pkg.update()' && \
    (test $TEST_ONLY_BUILD || julia -e 'import Pkg; Pkg.add("HDF5")') && \
    (test $TEST_ONLY_BUILD || julia -e 'import Pkg; Pkg.add("FITSIO")') && \
    julia -e 'import Pkg; Pkg.add("Glob")' && \
    julia -e 'import Pkg; Pkg.add("NBInclude")' && \
    julia -e 'import Pkg; Pkg.add("Weave")' && \
    julia -e 'import Pkg; Pkg.add("DataFrames")' && \
    julia -e 'import Pkg; Pkg.add("CSV")' && \
    julia -e 'import Pkg; Pkg.add("Distributions")' && \
    #julia -e 'import Pkg; Pkg.add("Gadfly")' && \
    #julia -e 'import Pkg; Pkg.add("RDatasets")' && \
    julia -e 'import Pkg; Pkg.add("Conda")' && \
    julia -e 'import Pkg; Pkg.add("PyCall")' && \
    julia -e 'import Pkg; Pkg.add("LaTeXStrings")' && \
    julia -e 'import Pkg; Pkg.add("PyPlot")' && \
    julia -e 'import Pkg; Pkg.add("Plots")' && \
    julia -e 'import Pkg; Pkg.add("IJulia"); Pkg.build("IJulia")' && \
    # Precompile Julia packages \
    julia -e 'using Glob' && \
    julia -e 'using NBInclude' && \
    julia -e 'using Weave' && \
    julia -e 'using DataFrames' && \
    julia -e 'using CSV' && \
    julia -e 'using Distributions' && \
    #julia -e 'using Gadfly' && \
    #julia -e 'using RDatasets' && \
    julia -e 'using Conda' && \
    julia -e 'using PyCall' && \
    julia -e 'using LaTeXStrings' && \
    julia -e 'using PyPlot' && \
    julia -e 'using Plots' && \
    julia -e 'using IJulia' && \
    # move kernelspec out of home \
    mv $HOME/.local/share/jupyter/kernels/julia* $CONDA_DIR/share/jupyter/kernels/ && \
    chmod -R go+rx $CONDA_DIR/share/jupyter && \
    rm -rf $HOME/.local && \
    fix-permissions $JULIA_PKGDIR $CONDA_DIR/share/
```
___
### Run a Jupyter Notebook Server w/ Julia/R/Python kernels

Start the Jupyter notebook server and bind it to `localhost:8888`
```bash
docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work psuastro528/notebook
```

- Direct your webbrowser to http://127.0.0.1:8888 to access the Jupyter server.
- Copy & paste "token" to access the server.
- Only files saved in the work directory (or its subdirectories) will remain after you close the Jupyter server and docker.
___
## docker-compose.yml
```shell
version: '3'
services:
  notebook:
    build: .
    volumes:
      - .:/home/jovyan/work
    ports:
      - 8888:8888
```
___
### Docker-compose
```bash
docker-compose up notebook
```
docker-compose.yml specifies:
- image avaliable from cloud.docker.com
- which storage location will appear as persistent storage in the work directory
- which port the server will be accessible through
---
### Singularity on ACI
```shell
> singularity pull shub://divetea/debian:latest
> singularity exec \
 -B /storage/work/abf123:/mnt -B /storage/home:/home \
 -H /home/abf123 divetea-debian-master-latest.simg /bin/bash
```
- Can also pull docker image and it will be converted to singularity 
- Still some issues with some images due to ACI running older linux kernel
---
# Reading Questions
___
How to package code to work with different operating systems?
- individual tarballs?
- generic source + make?
- Packages?
- Binder
- Docker?
---
# Questions?
{{</revealjs>}}
