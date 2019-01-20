+++
title = "Scripts for Submitting Lab"
weight = 1002
type="page"
include_toc = true

creatordisplayname = "Christian Gilbertson"
creatoremail = "cjg66@psu.edu"
lastmodifierdisplayname = "Christian Gilbertson"
lastmodifieremail = "cjg66@psu.edu"
+++


# Purpose

Automate the creation of .jmd files from the Jupyter notebooks and commiting of updates to Github for the lab assignments. You would use it after you got to a nice stopping point and wanted to save a image of your repository to Github. 

The final repository still has to be submitted for grading by submitting a pull request!

# Instructions

The bash script (submit_stuff.sh) and Julia script (create_jmds.jl) should be placed in the same directory as where you are storing all of your repository folders in the ACI account.

All you should have to do is change the git_user variable in the bash script. and set it to executable with 

```sh
chmod +x submit_stuff.sh
```

Then it should run fine by using 

```sh
./submit_stuff.sh
```

Once the script is running, it will ask you to type the number of the lab you are working on (an integer) and then ask you what you want the git commit message to be.

Let me (Christian Gilbertson, cjg66@psu.edu) know if it doesn't work for you!

{{%attachments title="Related files" pattern="(submit_stuff.sh|create_jmds.jl)"/%}}


