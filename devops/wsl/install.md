# Instalando WSL2 no Windows

https://learn.microsoft.com/pt-br/windows/wsl/install

Executar o PowerShell como administrador

```bash
wsl --install
```

Habilitar o Subsistema do Windows para Linux

```bash
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

Habilitar o recurso de Máquina Virtual

```bash
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

Baixar o pacote de atualização do kernel do Linux

```bash
wsl.exe --install ou wsl.exe --update
```

Definir o WSL 2 como a sua versão padrão

```bash
wsl --set-default-version 2
```

## Instalar a distribuição

Procurar no Microsoft Store

- Ubuntu
- Fedora
- Oracle Linux
- Suzy

