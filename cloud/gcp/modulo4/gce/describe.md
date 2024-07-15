# Como descrever VMs

Execute o seguinte comando para exibir todos os dados associados a uma VM:

```bash
gcloud compute instances describe VM_NAME


gcloud compute instances describe gce-rfahham-lab1
Did you mean zone [us-east1-b] for instance: [gce-rfahham-lab1] (Y/n)?  n

No zone specified. Using zone [southamerica-east1-a] for instance: [gce-rfahham-lab1].
canIpForward: false
confidentialInstanceConfig:
  enableConfidentialCompute: false
cpuPlatform: Intel Broadwell
creationTimestamp: '2024-02-13T11:35:50.711-08:00'
deletionProtection: false
description: ''
disks:
- architecture: X86_64
  autoDelete: true
  boot: true
  deviceName: gce-rfahham-lab1
  diskSizeGb: '10'
  guestOsFeatures:
  - type: UEFI_COMPATIBLE
  - type: VIRTIO_SCSI_MULTIQUEUE
  - type: GVNIC
  - type: SEV_CAPABLE
  index: 0
  interface: SCSI
  kind: compute#attachedDisk
  licenses:
  - https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-12-bookworm
  mode: READ_WRITE
  source: https://www.googleapis.com/compute/v1/projects/rfahham-dev/zones/southamerica-east1-a/disks/gce-rfahham-lab1
  type: PERSISTENT
displayDevice:
  enableDisplay: false
fingerprint: YVwpAkvKgRs=
id: '2561192458921081466'
keyRevocationActionType: NONE
kind: compute#instance
labelFingerprint: 42WmSpB8rSM=
lastStartTimestamp: '2024-02-13T11:45:16.794-08:00'
lastStopTimestamp: '2024-02-13T11:44:17.603-08:00'
machineType: https://www.googleapis.com/compute/v1/projects/rfahham-dev/zones/southamerica-east1-a/machineTypes/e2-medium
metadata:
  fingerprint: KUoot5snYVA=
  items:
  - key: ssh-keys
    value: |-
      devopsfahham:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBPnyR65BRNDHDOSvoL/3zAC7Ev6+Xs49u7gysFavUfYW84ZsgPn3vvxu8Uvd37A9P5uMeXzu1GJnaRP93Z1Pwoo= google-ssh {"userName":"devopsfahham@gmail.com","expireOn":"2024-02-13T19:41:56+0000"}
      devopsfahham:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCFJ4+3UwqizrGl+fQeZsJT/stMjdzZgqmy2LNtnjkmHIzpKnKSkqM5x7A4dw6lB8hvRjsASBSgsU5JKRC6f6NhBtWC1zikSvva2658krAake4oMgFpH+VrUxVt6wGkma4yKTkBg9ZWbG9k4ZN67fueZVcCqbwPTSr7QDDgCn5i6GoK1r6ToWfB6awatePKwo52XUMypG5XdRMxBsXKx6P09zo7I5zFRCtaQk4lWVqN3NJGqfKDzEISUgjin+NwVw00SgYwQjCHGGzKSCL7bEuNdN7bmfBbERviMqUQ7Nu+d3sS6Qf9zCuFWV3Yc4Yz0myvHczKQ84G3EpbqbQF88Br google-ssh {"userName":"devopsfahham@gmail.com","expireOn":"2024-02-13T19:42:11+0000"}
  kind: compute#metadata
name: gce-rfahham-lab1
networkInterfaces:
- accessConfigs:
  - kind: compute#accessConfig
    name: External NAT
    natIP: 34.151.254.253
    networkTier: PREMIUM
    type: ONE_TO_ONE_NAT
  fingerprint: dojMbSDESo8=
  kind: compute#networkInterface
  name: nic0
  network: https://www.googleapis.com/compute/v1/projects/rfahham-dev/global/networks/default
  networkIP: 10.158.0.14
  stackType: IPV4_ONLY
  subnetwork: https://www.googleapis.com/compute/v1/projects/rfahham-dev/regions/southamerica-east1/subnetworks/default
reservationAffinity:
  consumeReservationType: ANY_RESERVATION
scheduling:
  automaticRestart: true
  onHostMaintenance: MIGRATE
  preemptible: false
  provisioningModel: STANDARD
selfLink: https://www.googleapis.com/compute/v1/projects/rfahham-dev/zones/southamerica-east1-a/instances/gce-rfahham-lab1
serviceAccounts:
- email: 1022431685853-compute@developer.gserviceaccount.com
  scopes:
  - https://www.googleapis.com/auth/devstorage.read_only
  - https://www.googleapis.com/auth/logging.write
  - https://www.googleapis.com/auth/monitoring.write
  - https://www.googleapis.com/auth/servicecontrol
  - https://www.googleapis.com/auth/service.management.readonly
  - https://www.googleapis.com/auth/trace.append
shieldedInstanceConfig:
  enableIntegrityMonitoring: true
  enableSecureBoot: false
  enableVtpm: true
shieldedInstanceIntegrityPolicy:
  updateAutoLearnPolicy: true
startRestricted: false
status: RUNNING
tags:
  fingerprint: nNZ0SA7CJyk=
  items:
  - https-server
zone: https://www.googleapis.com/compute/v1/projects/rfahham-dev/zones/southamerica-east1-a

```
