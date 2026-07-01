# Respostas Revisão

1) O Scaffold fornece a estrutura básica de uma tela. É nele que colocamos elementos como AppBar, Body, Drawer, FloatingActionButton e BottomNavigationBar.

2) O AppBar é a barra superior da tela. Ele pode exibir o título da página, botões de ação, menu, botão de voltar e outras opções de navegação.

3) StatelessWidget: não possui estado interno e seu conteúdo não muda após ser criado.StatefulWidget: possui estado interno e pode atualizar sua interface durante a execução do aplicativo.

4) O setState() informa ao Flutter que o estado do widget foi alterado e que a interface deve ser reconstruída para refletir essa mudança.

5) O Navigator.push() adiciona uma nova tela na pilha de navegação e navega para ela, mantendo a tela anterior na memória.

6) O Navigator.pop() remove a tela atual da pilha de navegação e retorna para a tela anterior. 

7) O TextEditingController controla um campo de texto (TextField ou TextFormField), permitindo ler, alterar e limpar o texto digitado pelo usuário.

8) Para garantir que os dados estejam corretos e completos, evitando erros, informações inválidas e problemas no processamento da aplicação.

9) O SnackBar exibe mensagens temporárias na parte inferior da tela, normalmente para informar sucesso, erro ou avisos ao usuário.

10) O showModalBottomSheet() exibe uma janela deslizante na parte inferior da tela com opções, informações ou ações, bloqueando a interação com o restante da interface até ser fechada.

11) O AnimatedContainer anima automaticamente mudanças em propriedades como tamanho, cor, margem, padding e bordas, tornando as transições mais suaves.

12) Para permitir que o conteúdo possa ser rolado quando ele ultrapassa o tamanho disponível da tela, evitando estouro de layout (overflow).

13) Promove reutilização de código, facilita a manutenção, melhora a organização do projeto e mantém um padrão visual em diferentes partes da aplicação.

14) Column: organiza os widgets verticalmente, mas não possui rolagem. ListView: também organiza os widgets verticalmente, porém permite rolagem quando o conteúdo excede o tamanho da tela.

15) Porque deixa o código mais organizado, reutilizável, fácil de ler, testar e manter, além de facilitar o trabalho em equipe e reduzir a repetição de código.