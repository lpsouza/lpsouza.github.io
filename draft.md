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

## GIT behind a proxy

```bash
npm config set proxy "http://127.0.0.1:3128"
npm config set https-proxy "http://127.0.0.1:3128"
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

## Deleting docker images with name "\<none\>"

```bash
docker rmi $(docker images | grep "\<none\>" | cut -d" " -f 49)
```

```powershell
docker images | sls -Pattern "\<none\>" | % { docker rmi ($_ -split " ")[28] }
```

## Get Dell service tag (linux)

```bash
sudo dmidecode -t 1
```

## Merge PDF files com GhostScript (gs)

```bash
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dAutoRotatePages=/None -sOutputFile=merged/file.pdf file_*
```

## Database (SQLite) scaffolding in C# (.NET Core)

```bash
# Install EF for SQLite
dotnet add package Microsoft.EntityFrameworkCore.Sqlite

# Scaffolding database
dotnet ef dbcontext scaffold "Datasource=database.sqlite" Microsoft.EntityFrameworkCore.Sqlite -o Models -c AppDBContext

# Enable dotnet-aspnet-codegenerator
dotnet tool install --global dotnet-aspnet-codegenerator
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design

# Create a model and add DBSet in AppDBContext file

# Create CRUD
dotnet aspnet-codegenerator controller -name StudentsController -m Student -dc AppDBContext --relativeFolderPath Controllers --useDefaultLayout --referenceScriptLibraries

# Create CRUD (WebAPI)
dotnet aspnet-codegenerator controller -name StudentsController -m Student -dc AppDBContext --relativeFolderPath Controllers/API -api --referenceScriptLibraries

# Generate migrations
dotnet ef migrations add Inicial

# Update database
dotnet ef database update
```

## Links para posts

- [https://4sysops.com/archives/windows-event-forwarding-to-a-sql-database/](https://4sysops.com/archives/windows-event-forwarding-to-a-sql-database/)
- [https://www.infoworld.com/article/3403683/visual-studio-code-stepping-on-visual-studios-toes.amp.html](https://www.infoworld.com/article/3403683/visual-studio-code-stepping-on-visual-studios-toes.amp.html)
- [https://help.gnome.org/users/gnome-help/stable/shell-keyboard-shortcuts.html.pt_BR](https://help.gnome.org/users/gnome-help/stable/shell-keyboard-shortcuts.html.pt_BR)
- [https://help.github.com/en/articles/redirects-on-github-pages](https://help.github.com/en/articles/redirects-on-github-pages)
- [https://gunnarpeipman.com/net/dotnet-core-self-contained-executable/](https://gunnarpeipman.com/net/dotnet-core-self-contained-executable/)
- [https://medium.com/better-programming/make-bash-on-ubuntu-on-windows-10-look-like-the-ubuntu-terminal-f7566008c5c2](https://medium.com/better-programming/make-bash-on-ubuntu-on-windows-10-look-like-the-ubuntu-terminal-f7566008c5c2)
- [https://www.winhelponline.com/blog/set-cmd-prompt-default-window-size-position/](https://www.winhelponline.com/blog/set-cmd-prompt-default-window-size-position/)
- [https://rudd-o.com/linux-and-free-software/a-better-way-to-create-a-customized-ubuntu-live-usb-drive](https://rudd-o.com/linux-and-free-software/a-better-way-to-create-a-customized-ubuntu-live-usb-drive)
- [https://www.infoworld.com/article/3434611/7-visual-studio-code-extensions-you-didnt-know-you-needed.html?upd=1567851075451](https://www.infoworld.com/article/3434611/7-visual-studio-code-extensions-you-didnt-know-you-needed.html?upd=1567851075451)
