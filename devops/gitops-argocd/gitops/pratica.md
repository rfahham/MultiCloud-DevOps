# Como as equipes colocam o GitOps em prática?

O GitOps não é um único produto, plugin ou plataforma. Não há uma resposta única para esta pergunta, pois a melhor maneira de as equipes colocarem o GitOps em prática variará dependendo das necessidades e objetivos específicos da equipe. No entanto, algumas dicas sobre como começar com o GitOps incluem o uso de um repositório GitOps dedicado para que todos os membros da equipe compartilhem configurações e código, automatize a implantação de alterações de código e a configuração de alertas para notificar a equipe quando as alterações ocorrerem.

O GitOps requer três componentes principais:

> IaC:

O GitOps usa um repositório Git como a única fonte de verdade para definições de infraestrutura. O Git é um sistema de controle de versão de código aberto que rastreia as alterações de gerenciamento de código, e um repositório Git é uma pasta .git em um projeto que rastreia todas as alterações feitas em arquivos em um projeto ao longo do tempo. Infraestrutura como código (IaC) é a prática de manter toda a configuração de infraestrutura armazenada como código. O estado desejado real pode ou não não ser armazenado como código (por exemplo, número de réplicas ou vagens).

> MRs:

O GitOps usa solicitações de mesclagem (MRs) ou pull requests (PRs) como o mecanismo de alteração para todas as atualizações de infraestrutura. O MR ou PR é onde as equipes podem colaborar através de comentários e comentários e onde as aprovações formais ocorrem. Uma mesclagem se compromete com sua filial principal (ou trunk) e serve como um log de auditoria ou trilha de auditoria.

> CI / CD:

O GitOps automatiza as atualizações de infraestrutura usando um fluxo de trabalho Git com integração contínua e entrega contínua (CI/CD). Quando o novo código é mesclado, o pipeline CI/CD decreta a mudança no ambiente. Qualquer desvio de configuração, como alterações manuais ou erros, é sobrescrito pela automação do GitOps para que o ambiente convirja para o estado desejado definido no Git. O GitLab usa pipelines CI/CD para gerenciar e implementar a automação do GitOps, mas outras formas de automação, como operadores de definições, também podem ser usadas.

Próximo passo...[Desafios](./desafio.md)