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

When you first try submiting a batch job to ACI to run Julia on multiple processors, you may get one of two error messages relaed to your SSH keys requiring a password or your ssh keys not being authorized.

First, try sshing from one ACI system to another (e.g., `ssh aci-b.aci.ics.psu.edu`).  Does it just connect you?  Or does it ask you for a password?  If it asks for a password, is it asking for your Penn State password or the password you setup for your ssh keys?

### If it asks you for your Penn State Password...
You appear to not have ssh keys setup on ACI.

1.  Run the script at the bottom of this page on ACI.  
2.  Authorize your github account sent/receive info using your new ssh keys, as described [here](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/#platform-linux).
3.  Try submitting ex1_parallel.pbs again

### If it asks you for the password to your ssh keys...
You need to create ssh keys that don't have a password.

1.  Run the `updateKeys.sh` script at the bottom of this page.
2.  Reauthorize your github account sent/receive info using your new ssh keys, as described [here](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/#platform-linux).
3.  Try submitting ex1_parallel.pbs again


### If it does not ask you for any password...
You're probably very close (or you have a problem that we haven't encountered before).  Please try running the following commands from the ACI command line.  Then try submitting a parallel job again.

```sh
# Authorize for this location (home is shared on the compute nodes)
cp ~/.ssh/authorized_keys ~/.ssh/authorized_keys.replaced
cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys

# Setting up the host key checking...
echo "StrictHostKeyChecking no" > ~/.ssh/config

# Correct the permissions
chmod 444 ~/.ssh/config
chmod 640 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
```

### One more thing to try...
If you're still having trouble, then 

1.  Download the `roundRobinKnownHosts.sh` script below onto ACI. 

```bash
wget http://psuastro528.github.io/tips/julia_parallel_on_aci.files/roundRobinKnownHosts.sh
```
2.  Make the script executable  

```bash
chmod u+x roundRobinKnownHosts.sh
```
3.  Run the script for aci-i, aci-b and datamgr

```bash
./roundRobinKnownHosts.sh aci-i.aci.ics.psu.edu >> ~/.ssh/known_hosts
./roundRobinKnownHosts.sh aci-b.aci.ics.psu.edu >> ~/.ssh/known_hosts
./roundRobinKnownHosts.sh datamgr.aci.ics.psu.edu >> ~/.ssh/known_hosts
```
### Script for setting up ssh keys for using Julia in parallel.
The `updateKeys.sh` script below will replace your ssh keys with new ones that should work with julia in parallel.  If you run the `updateKeys.sh` script, then you'll likely need to [add the new ssh key to the list of authorized keys for your github account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/#platform-linux) in order to continue pulling and pushing between ACI and github.  As far as I know, the `roundRobinKnownHosts.sh` script doesn't break anything.
{{%attachments title="Shell scripts" /%}}
