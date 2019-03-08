+++
title = "Running Jupyter on a GPU node"
weight = 1030
type="page"
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11@psu.edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11@psu.edu"
+++

You can currently access a K4000 GPU on the ACI interactive nodes from the Jupyter notebook server.  Students in the class can access more powerful P100 GPUs (with support for double precission arithmetic) via the CyberLAMP cluster by specifying the following PBS options:
- `-A cyberlamp_class`
- `-l qos=cl_class`
- `-l nodes=1:ppn=1:gpus=1` 

If you would like to run Jupyter on a GPU node, then you can try the following instructions kindly provided by Justin Petucci:

1. Download firefox singularity image:
```bash
mkdir -p ~/work/sw/singularity
cd ~/work/sw/singularity
singularity pull shub://jpetucci/firefox_icsaci
```

2. Launch an Interactive Desktop session from OpenOnDemand

3. Submit an interactive batch job (you will need to change the resources like memory and walltime based on your needs):
```bash
qsub -I -X -A cyberlamp_class -l qos=cl_class -l nodes=1:ppn=1:gpus=1 -l walltime=2:00:00
```

4. After your job starts, start a screen session:
```bash
screen
```

5. Load the Python module:
```bash
module load python/3.6.3-anaconda5.0.1
```

6. Start Jupyter:
```bash
jupyter notebook
```

7. Copy the link for the notebook server.  For example, the address might look like http://localhost:8888/?token=de99f0c76cbcfcb183693ff0491f00f278d781bb3586ea8e . Do *not* try to use the address given as an example.

8. Detach the screen session:
 press control+A+D to detach from the screen session

9. Launch firefox:
```bash
singularity run  ~/work/sw/singularity/jpetucci-firefox_icsaci-master-latest.simg
```

10. Paste the address of the notebook server into firefox 

Good luck.  If you find corrections, pleaset submit a PR to improve these instructions. 
