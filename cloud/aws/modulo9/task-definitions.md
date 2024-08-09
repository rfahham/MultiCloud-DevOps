# Task Definition Amazon ECS

Uma definição de tarefa é um modelo para sua aplicação. É um texto arquivo no formato JSON que descreve os parâmetros e um ou mais contêineres que formam o seu A aplicação.

A seguir estão alguns dos parâmetros que você pode especificar em uma definição de tarefa:

- O tipo de lançamento a ser usado, que determina a infraestrutura que suas tarefas são hospedado em

- A imagem Docker para usar com cada container em sua tarefa

- Quanta CPU e memória para usar com cada tarefa ou cada contêiner dentro de um A tarefa

- Os requisitos de memória e CPU

- O sistema operacional do contêiner em que a tarefa é executada

- O modo de rede Docker para usar para os contêineres em sua tarefa

- A configuração de log para usar em suas tarefas

- Se a tarefa continua a correr se o recipiente terminar ou falhar

- O comando que o contêiner é executado quando é iniciado

- Quaisquer volumes de dados que são usados com os contêineres na tarefa

- O papel do IAM que suas tarefas usam

Para obter uma lista completa de parâmetros de definição de tarefa, consulte Parâmetros de definição de tarefa do Amazon ECS.

Depois de criar uma definição de tarefa, você pode executar a definição de tarefa como uma tarefa ou como uma Serviço.

- Uma tarefa é a instanciação de uma definição de tarefa dentro de uma - Agrupar. Depois de criar uma definição de tarefa para o seu aplicativo no Amazon ECS, você pode especificar o número de tarefas a executar no cluster.

- Um serviço do Amazon ECS executa e mantém o seu Número desejado de tarefas simultaneamente em um cluster do Amazon ECS. Como funciona é isso, se Qualquer uma das suas tarefas falhar ou parar por qualquer motivo, o agendador de serviços do Amazon ECS é lançado outra instância baseada na sua definição de tarefa. Ele faz isso para substituí-lo e mantenha assim o número desejado de tarefas no serviço.

<div align=center>

![Usar](./images/usar.png)

</div>



Proximo passo... [Deploy / Service](service.md) 
