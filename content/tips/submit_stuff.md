+++
title = "Scripts for Submitting Lab"
weight = 1001
type="page"
include_toc = true

creatordisplayname = "Christian Gilbertson"
creatoremail = "optional at psu dot edu"
lastmodifierdisplayname = "Your name here"
lastmodifieremail = "optional at psu.edu"
+++


# Purpose

Automate most the submitting of lab assignments

# Instructions

Here are the scripts I (Christian Gilbertson) made. They should be placed in the directory above all of their repos in the ACI account.

All students should have to do in principle is change the git_user variable in the bash script. and set it to executable with 

```sh
chmod +x submit_stuff.sh
```

Then it should run fine by using 

```sh
./submit_stuff.sh
```

Once the script is running they basically say the number of the lab they are working on and type out the git commit message.

{{%attachments title="Related files" pattern="(submit_stuff.sh|create_jmds.jl)"/%}}


