+++
title = "Setup Jupyter extensions on ACI"
weight = 1003
type="page"
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11@psu.edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11@psu.edu"
+++


## Install Jupyter notebook extensions on ACI

1. Do you already have conda setup (i.e., is there a ~/.conda directory)?
+ If so, then move conda directory from home to work
```shell
cd $HOME
cp -r ~/.conda ~/work/conda_local
rm -rf .conda
ln -sf ~/work/conda_local .conda
```
+ Otherwise, create .conda in your work directory
```shell
cd ~
mkdir ~/work/conda_local
ln -sf ~/work/conda_local .conda
```



2. Create a conda environment and install nbextensions
```shell
module load python/3.6.3-anaconda5.0.1
conda create -y -n myconda-nbx
source activate myconda-nbx
conda install -y -c conda-forge jupyter_contrib_nbextensions
source deactivate
```

3. Modify ~/.bashrc (or start from [this suggested .bashrc template](bashrc) to make nbextensions accessible on OOD. For this, add the following to your .bashrc file:

```shell
case $HOSTNAME in
  *comp-ic*)
    module load python/3.6.3-anaconda5.0.1
    source activate myconda-nbx
    declare -r PATH=/storage/home/$USER/.conda/envs/myconda-nbx/bin:/opt/aci/sw/python/3.6.3_anaconda-5.0.1/scripts:/opt/aci/sw/python/3.6.3_anaconda-5.0.1/bin:/usr/local/bin:/usr/local/sbin:/opt/moab/bin:/opt/mam/bin:/usr/lpp/mmfs/bin:/usr/local/bin:/usr/local/sbin:/usr/lib64/qt-3.3/bin:/opt/moab/bin:/opt/mam/bin:/usr/local/bin:/bin:/usr/bin:/opt/puppetlabs/bin:/usr/sbin:/sbin
    export PATH
    ;;
esac
```
