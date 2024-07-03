## Grupos de usuários do IAM

> Um grupo de usuários do IAM é um conjunto de usuários do IAM. Os grupos de usuários permitem especificar permissões para vários usuários, o que pode facilitar o gerenciamento das permissões para esses usuários. Por exemplo, você pode ter um grupo de usuários chamado Admins e dar a esse grupo de usuários as permissões normais dos administradores. Qualquer usuário desse grupo de usuários tem automaticamente permissões de grupo Admins. Se um novo usuário ingressar na organização e precisar de privilégios de administrador, você poderá atribuir as permissões apropriadas adicionando o usuário ao grupo de usuários Admins. Se uma pessoa mudar de cargo na organização, em vez de editar as permissões de usuário, você poderá removê-las dos grupos antigos do usuário e adicioná-las aos novos grupos do usuário apropriados.

> Você pode anexar uma política baseada em identidade a um grupo de usuários para que todos os usuários do grupo de usuários recebem as permissões da política. Não é possível identificar um grupo de usuários como Principal em uma política (como uma política baseada em recursos) porque os grupos são relacionados com permissões, não autenticação, e as entidades principais são entidades autenticadas do IAM. Para obter mais informações sobre tipos de política, consulte Políticas baseadas em identidade e em recurso.

> Veja a seguir algumas características importantes de grupos de usuários:

> Um grupo de usuários pode conter muitos usuários e um usuário pode pertencer a vários grupos de usuários.

> Os grupos de usuários não podem ser aninhados; eles podem conter apenas usuários, não outros grupos de usuários.

> Não existe um grupo de usuários padrão que inclua automaticamente todos os usuários da Conta da AWS. Se você deseja ter um grupo de usuários como este, deve criá-lo e atribuir cada novo usuário a ele.

> O número e o tamanho dos recursos do IAM em uma Conta da AWS, como o número de grupos e o número de grupos dos quais um usuário pode ser membro, são limitados. Para obter mais informações, consulte IAM e cotas do AWS STS.

> O diagrama a seguir mostra um exemplo simples de uma pequena empresa. O proprietário da empresa cria um grupo de usuários Admins para que os usuários criem e gerenciem outros usuários à medida que a empresa cresce. O grupo de usuários Admins cria um grupo de usuários Developers e um grupo de usuários Test. Cada um desses grupos de usuários consiste em usuários (humanos e aplicações) que interagem com a AWS (Jim, Brad, DevApp1 e assim por diante). Cada usuário tem um conjunto individual de credenciais de segurança. Neste exemplo, cada usuário pertence a um único grupo de usuários. No entanto, os usuários podem pertencer a vários grupos de usuários.