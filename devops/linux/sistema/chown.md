# CHOWN

## Listando os arquivos

```bash
ls -la
total 32120
drwxr-xr-x   8 ricardo.fahham  staff       272 Apr 11 11:15 .
drwx------+ 24 ricardo.fahham  staff       816 Apr 11 09:59 ..
-rw-r--r--@  1 ricardo.fahham  staff      8196 Apr 10 15:14 .DS_Store
-rw-r--r--@  1 ricardo.fahham  staff       267 Apr 10 10:53 Aprenda React na prática - Introdução
-rw-r--r--@  1 ricardo.fahham  staff  16423174 Apr 11 10:46 node-v9.11.1.pkg
drwxr-xr-x  12 ricardo.fahham  staff       408 Apr 10 10:48 react-series
-rw-r--r--@  1 ricardo.fahham  staff       293 Apr 10 10:23 react.html
drwxr-xr-x   9 root            staff       306 Apr 11 11:17 youtube-react
```

Dar permissão de administrador local em uma pasta `youtube-react`

```bash
sudo chown -R ricardo.fahham youtube-react/
```

## Listando os arquivos

```bash
$ ls -la
total 32120
drwxr-xr-x   8 ricardo.fahham  staff       272 Apr 11 11:15 .
drwx------+ 24 ricardo.fahham  staff       816 Apr 11 09:59 ..
-rw-r--r--@  1 ricardo.fahham  staff      8196 Apr 10 15:14 .DS_Store
-rw-r--r--@  1 ricardo.fahham  staff       267 Apr 10 10:53 Aprenda React na prática - Introdução
-rw-r--r--@  1 ricardo.fahham  staff  16423174 Apr 11 10:46 node-v9.11.1.pkg
drwxr-xr-x  12 ricardo.fahham  staff       408 Apr 10 10:48 react-series
-rw-r--r--@  1 ricardo.fahham  staff       293 Apr 10 10:23 react.html
drwxr-xr-x   9 ricardo.fahham  staff       306 Apr 11 11:17 youtube-react
```