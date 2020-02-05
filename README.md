# bounce_k8s #

## description ##
An ansible playbook to do a rolling drain, reboot, and uncordon of any number of nodes.

## dependencies ##
- ansible must be installed on a linux box you are running these scripts from
- you must have a user account that can log into all nodes and has sudo with passwd auth
- kubectl configured to access the cluster you wish to do a rolling reboot of

## caveats ##
- for the drain of each node this uses `--delete-local-data`. You must be cool with this. No warranty.
- the run script uses $USER to determine the ansible_user. If your user cannot log into all nodes with sudo you are on your own.

## quick start ##
Prepare your hosts:

`./populate_hosts.sh`

Run the playbook:

`./run.sh`
