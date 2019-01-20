+++
title = ".bashrc file for ACI"
weight = 1001
type="page"
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11@psu.edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11@psu.edu"
+++

The following `.bashrc` file works for me.  I can access Jupyter notebook server with Julia or Python kernels (haven't tested R), log in via ssh,  and use the Open On Demand portal's interactive desktop _with the _XFCE_ desktop manager (but not with the Gnome desktop manager).  

```shell
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Optionally point to user/group specific modules
# module use /gpfs/group/ebf11/default/sw/modules

export JULIA_DEPOT_PATH=/storage/home/ebf11/work/julia_depot
export LD_LIBRARY_PATH=/storage/home/ebf11/work/julia_install/julia-1.0.2/lib/julia:/opt/aci/sw/python/3.6.3_anaconda-5.0.1/lib
export PATH=${PATH}:/storage/home/ebf11/work/julia_install/julia-1.0.2/bin:/opt/aci/sw/python/3.6.3_anaconda-5.0.1/scripts:/usr/lib64/qt-3.3/bin

```

