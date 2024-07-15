# Apagar

```bash
gcloud compute instances delete gce-rfahham-lab1 --project=rfahham-dev

Did you mean zone [us-east1-b] for instance: [gce-rfahham-lab1] (Y/n)?  n

No zone specified. Using zone [southamerica-east1-a] for instance: [gce-rfahham-lab1].
The following instances will be deleted. Any attached disks configured to be auto-deleted will be deleted unless they are attached to any other instances or the 
`--keep-disks` flag is given and specifies them for keeping. Deleting a disk is irreversible and any data on the disk will be lost.
 - [gce-rfahham-lab1] in [southamerica-east1-a]

Do you want to continue (Y/n)?  y

Deleted [https://www.googleapis.com/compute/v1/projects/rfahham-dev/zones/southamerica-east1-a/instances/gce-rfahham-lab1]
```