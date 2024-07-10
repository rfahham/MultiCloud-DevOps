# OpenGitOps

https://opengitops.dev/

O que é OpenGitOps ?
OpenGitOps é um conjunto de padrões de código aberto, melhores práticas e educação focada na comunidade para ajudar organizações a adotar uma abordagem estruturada e padronizada para implementar o GitOps .

> GitOps é a melhor coisa desde a configuração como código. O Git mudou a forma como colaboramos, mas a configuração declarativa é a chave para lidar com infraestrutura em escala e prepara o cenário para a próxima geração de ferramentas de gerenciamento.

- Kelsey Hightower, defensora do desenvolvimento de equipe, Google

> Gostaria que as práticas do GitOps estivessem disponíveis há uma década. O GitOps aumenta a qualidade de tudo o que fazemos. Agora mesmo, não consigo imaginar trabalhar de forma diferente em nenhum momento no futuro.

- Florian Heubeck, engenheiro principal, MediaMarktSaturn Technology

> O GitOps parece ser a maneira certa de gerenciar clusters do Kubernetes. Outras ferramentas de CI/CD pré-containerização são instáveis, frágeis e tomam um tempo valioso. Os engenheiros devem se concentrar em resolver problemas de código, e não no processo de implantação.

- Curva

## Princípios do GitOps v1.0.0

1 - Declarativo
Um sistema gerenciado pelo GitOps deve ter seu estado desejado expresso declarativamente.

2 - Versionado e imutável
O estado desejado é armazenado de uma forma que impõe imutabilidade, controle de versão e retém um histórico de versão completo.

3 - Puxado Automaticamente
Os agentes de software extraem automaticamente as declarações de estado desejadas da fonte.

4 - Reconciliado Continuamente
Os agentes de software observam continuamente o estado real do sistema e tentam aplicar o estado desejado.
