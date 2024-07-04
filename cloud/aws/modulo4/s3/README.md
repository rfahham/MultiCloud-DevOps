# Amazon S3 - Simple Storage Service

Armazenamento de Dados Simples e Eficaz!

> O Amazon S3 tem vários recursos que você pode usar para organizar e gerenciar seus dados de maneiras que oferecem suporte a casos de uso específicos, permitem economizar, impõem segurança e satisfazem os requisitos de conformidade. Os dados são armazenados como objetos em recursos chamados "buckets" e um único objeto pode ter até 5 terabytes. Os recursos do S3 incluem funções para anexar tags de metadados a objetos, mover e armazenar dados nas classes de armazenamento do S3, configurar e impor controles de acesso aos dados, proteger os dados contra usuários não autorizados, executar análise de big data, monitorar dados nos níveis do objeto e do bucket, exibir o uso do armazenamento e as tendências de atividades em sua empresa. Os objetos podem ser acessados por meio dos S3 Access Points ou diretamente pelo hostname do bucket.

## Benefícios

1 - Escalabilidade infinita 

> O Amazon S3 fornece a melhor performance do setor para o armazenamento de objetos na cloud. O Amazon S3 suporta solicitações paralelas, ou seja, você pode escalar a performance do S3 pelo fator do cluster de computação sem fazer nenhuma personalização na aplicação. A performance é escalada por prefixo, para que você possa usar quantos prefixos forem necessários em paralelo para atingir a taxa de transferência necessária. Não há limites quanto ao número de prefixos. A performance do Amazon S3 suporta, pelo menos, 3.500 solicitações por segundo para adicionar dados e 5.500 solicitações por segundo para recuperar dados. Cada prefixo do S3 pode dar suporte a essas taxas de solicitação, simplificando muito o aumento da performance.

2 - Confiabilidade e alta disponibilidade

> Com o S3 Replication, você pode replicar objetos (e os respectivos metadados e etiquetas do objeto) para um ou mais buckets de destino na mesma Região da AWS ou em outra diferente para obter latência reduzida, conformidade, segurança, recuperação de desastres e outros casos de uso.

[Mais detalhes...](https://aws.amazon.com/pt/s3/features/replication/)

3 - Segurança robusta

> O Amazon S3 oferece recursos de segurança flexíveis para impedir que usuários não autorizados acessem seus dados. Use endpoints da VPC para conectar aos recursos do S3 a partir do Amazon Virtual Private Cloud (Amazon VPC) e de on-premises. O Amazon S3 criptografa todos os novos dados carregados em qualquer bucket (a partir de 5 de janeiro de 2023). O Amazon S3 oferece suporte para criptografia no lado do servidor (com três opções de gerenciamento de chaves) e criptografia no lado do cliente para uploads de dados. Use o Inventário do S3 para verificar o status de criptografia dos objetos do S3.

4 - Backup

> O S3 permite fazer backup regulares dos dados críticos da sua empresa, garantindo recuperação rápida em caso de problemas.

5 - Classes de armazenamento

> Com o Amazon S3, você pode armazenar dados em uma variedade de diferentes classes de armazenamento S3 criadas para casos de uso e padrões de acesso específicos: 

- S3 Intelligent-Tiering, 
- S3 Standard, 
- S3 Standard-Infrequent Access (S3 Standard-IA), 
- S3 One Zone-Infrequent Access (S3 One Zone-IA), 
- S3 Glacier Instant Retrieval, 
- S3 Glacier Flexible Retrieval, 
- S3 Glacier Deep Archive e 
- S3 Outposts.

6 - Processamento de dados

> Com o S3 Object Lambda, você pode adicionar seu próprio código às solicitações GET, LIST e HEAD do S3 para modificar e processar dados conforme eles são retornados a uma aplicação. Você pode usar o código personalizado para modificar os dados retornados por solicitações GET do S3 padrões para filtrar linhas, redimensionar imagens dinamicamente, editar dados confidenciais e muito mais. Você também pode usar o S3 Object Lambda para modificar a saída de solicitações LIST do S3 a fim de criar uma visualização personalizada dos objetos em um bucket e solicitações HEAD do S3 a fim de modificar metadados de objetos, como o nome e o tamanho do objeto. Com as funções do AWS Lambda, seu código é executado em uma infraestrutura totalmente gerenciada pela AWS, removendo a necessidade de criar e armazenar cópias derivadas de seus dados ou executar proxies caros, tudo sem a necessidade de alterações nas aplicações.

> O S3 Object Lambda usa funções do AWS Lambda para processar automaticamente a saída de uma solicitação GET, HEAD ou LIST do S3 padrão. O AWS Lambda é um serviço de computação com tecnologia sem servidor que executa um código definido pelo cliente sem exigir o gerenciamento de recursos de computação subjacentes. Com apenas alguns cliques no Console de Gerenciamento da AWS, você pode configurar uma função do Lambda e anexá-la a um ponto de acesso do S3 Object Lambda. Desse ponto em diante, o S3 chamará automaticamente sua função do Lambda para processar quaisquer dados recuperados por meio do ponto de acesso do S3 Object Lambda, retornando à aplicação um resultado transformado. Você pode criar e executar suas próprias funções do Lambda personalizadas, adaptando a transformação de dados do S3 Object Lambda ao seu caso de uso específico.

Próximo passo... [Criar um Bucket](criar.md)