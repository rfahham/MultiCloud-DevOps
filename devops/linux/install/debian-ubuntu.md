# APT

## Para instalações de pacotes:

No debian / ubuntu

```bash
sudo apt-get install <pacote>
```

Limpar os caches de instalação

Clean file /var/cache/apt/archives/lock
Clean directory /var/cache/apt/archives/
Clean file /var/lib/apt/lists/lock
Clean directory /var/lib/apt/lists/
Clean /var/cache/apt/pkgcache.bin
Clean /var/cache/apt/srcpkgcache.bin

```bash
sudo apt clean

ou 

sudo yum clean all
```bash
