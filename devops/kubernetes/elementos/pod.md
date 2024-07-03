# POD

Menor objeto dentro do Cluster Kubernetes, nele será executado os containers.

Vão compartilhar endereço de rede e sistema de arquivos e diretórios

O ideal é ter sempre mais do que um pod para a aplicação, por causa da resiliência. 

Um pod sozinho é chamado de NAKED POD. rs

Cada container precisa ser executado dentro de um POD, para poder escalar horizontalmente, na hora de criar as [RÉPLICAS](../elementos/replicaset.md).