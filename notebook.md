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
