# Drafts

## Time in dual boot (Windows)

```powershell
Set-Location HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation\
New-ItemProperty -Path . -Name RealTimeIsUniversal -Value 1 -PropertyType DWORD
```

## GIT initial configuration

```bash
git config --global user.name "Luiz Pereira de Souza Filho"
git config --global user.email lpsouza@gmail.com
git config --global credential.helper store
```

## Creating image for LXD storage (testing)

```bash
dd if=/dev/zero of=lxd-storage.img bs=4k count=26843545600
mkfs.ext4 lxd-storage.img
tune2fs -c0 -i0 lxd-storage.img
```

## User-data example

```yaml
#cloud-config
password: 12qwaszx
chpasswd: { expire: False }
ssh_pwauth: True
write_files:
  - path: /etc/ssh/sshd_config
    content: |
         Port 2201
```

## Creating docker machine inside LXD container (inception)

```bash
#!/bin/sh

LXC="/usr/bin/lxc"
LXDCONTAINER="docker"
LXDIMAGE="ubuntu:"

$LXC launch $LXDIMAGE $LXDCONTAINER
$LXC config set $LXDCONTAINER security.nesting true
$LXC config set $LXDCONTAINER security.privileged true
cat <<EOT | $LXC config set $LXDCONTAINER raw.lxc -
lxc.cgroup.devices.allow = a
lxc.cap.drop =
EOT
$LXC restart $LXDCONTAINER
$LXC exec $LXDCONTAINER -- curl -o ./docker-installer.sh https://get.docker.com
$LXC exec $LXDCONTAINER -- sh ./docker-installer.sh
$LXC exec $LXDCONTAINER -- docker run --rm hello-world
```

## Links para posts

- https://4sysops.com/archives/windows-event-forwarding-to-a-sql-database/
