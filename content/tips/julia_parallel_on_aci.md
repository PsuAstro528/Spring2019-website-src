+++
title = "Fix for SSH keys on ACI"
weight = 1015
type="page"
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11@psu.edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11@psu.edu"
+++

When you submit a batch job to ACI to run Julia on multiple processors, you may get an error message relaed to your SSH keys not being authorized.  If so, please try running the following commands from the ACI command line.  Then try submitting a parallel job again.

```sh
# Authorize for this location (home is shared on the compute nodes)
cp ~/.ssh/authorized_keys ~/.ssh/authorized_keys.replaced
cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys

# Setting up the host key checking...
echo "StrictHostKeyChecking no" > ~/.ssh/config

# Correct the permissions
chmod 444 ~/.ssh/config
chmod 700 ~/.ssh
```

There is a script that does this, but the script also moves your existing ssh keys.  So if you run this script, I suspect that your ability to pull/push to git repositories will break.  If you run the updateKeys.sh script, then you'll likely need to add the new ssh key to the list of authorized keys for your github account.
{{%attachments title="Related files" /%}}



