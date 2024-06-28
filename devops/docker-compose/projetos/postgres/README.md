# Baixar a imagem e criar o container

```bash
docker compose up -d

[+] Running 15/15
 ✔ postgree Pulled                                                                                                                                                                
   ✔ 2cc3ae149d28 Already exists                                                                                                                                                   
   ✔ d1a63825d58e Pull complete                                                                                                                                                    
   ✔ ed6f372fe58d Pull complete                                                                                                                                                    
   ✔ 35f975e69306 Pull complete                                                                                                                                                  
   ✔ 40c4fe86e99d Pull complete                                                                                                                                                    
   ✔ 4795e1a32ff6 Pull complete                                                                                                                                                    
   ✔ bcb5a54ae87d Pull complete                                                                                                                                                    
   ✔ d3983228bec6 Pull complete                                                                                                                                                    
   ✔ 5378bf7229e9 Pull complete                                                                                                                                                   
   ✔ bba3241011a6 Pull complete                                                                                                                                                   
   ✔ 5e1d0413d05a Pull complete                                                                                                                                                   
   ✔ 6a489170d05e Pull complete                                                                                                                                                   
   ✔ 440b39aff272 Pull complete                                                                                                                                                   
   ✔ 582c79113570 Pull complete                                                                                                                                                   
[+] Running 2/2
 ✔ Network projetos_default       Created                                                                                                                                          
 ✔ Container projetos-postgree-1  Started 
```

# Finalizar o container

```bash
docker compose down

[+] Running 2/2
 ✔ Container projetos-postgree-1  Removed                                                                                                                                          
 ✔ Network projetos_default       Removed
```