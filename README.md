# Trabalho Final da Disciplina de Desenvolvimento WEB 2023/02
Este repositório contem os fontes do trabalho final da disciplina de Desenvolvimento Web, semestre 2023/02.\
O tema do trabalho foi deixado livre, porém foram propostos os seguintes requisitos funcionais:

    * Deve permitir manipulação do banco de dados via software;
    * Deve ter um frontend permitindo uma interação adequada ao usuário (pode ser usado um framework de frontend como o bootstrap ou materialize);
    * Deve processar dados e não apenas exibir, ou seja, de acordo com a interação do usuário, devem existir cálculos, alterações dinâmicas e não com resultados fixos;
    * É necessário que o código possa rodar em qualquer maquina com o ruby on rails instalado na versão correta;
    * Os fontes do projeto devem estar atualizados no Github;

# Cheat Sheet dos comandos utilizados em aula
Este Cheat Sheet de comandos é resultado da tarefa proposta na aula EAD do dia 07/10/2023.

## Comandos Linux
Estes são os principais comandos Linux utilizados:

    cd <diretorio>
Muda para o diretório indicado no argumento.

    ls
Lista o conteúdo do diretório atual ou do diretório que for passado como argumento.

    Ctrl + C
Aborta qualquer programa que esteja rodando no terminal. Por exemplo, é usado para derrubar o servidor Rails ou abortar tasks em andamento.
    
## Comandos Vagrant
Todos os comandos abaixo são precedidos pelo comando `vagrant` que indica ao sistema operacional que o usuário deseja realizar uma função do software indicado e não do próprio sistema operacional.

### Criando a VM
    vagrant init
Inicializa o Vagrant, criando um diretório ./.vagrant e o Vagrantfile na qual deve ser indicada a imagem que se deseja utilizar para rodar o Vagrant.
### Inicializando a VM
    vagrant up
Inicializa a máquina virtual especificada no Vagrantfile. Ao rodar pela primeira vez, este comando fará o download de todas as dependências necessárias à máquina virtual.

    vagrant resume
Utilizado para retomar a máquina virtual após suspendê-la.

### Acessando a VM
    vagrant ssh
Conecta o terminal à máquina virtual a partir de uma conexão SSH.

### Parando a VM
    vagrant halt
Para a máquina virtual.

    vagrant suspend
Suspende (pausa) a máquina virtual.

### Outros
    vagrant -v
Informa a versão do vagrant instalada na máquina.

## Comandos Rails
Como acontece com o Vagrant, todos os comandos abaixo são precedidos pelo comando `rails`, que indica ao sistema operacional que o usuário deseja utilizar uma função do framework instalada na máquina. Para uma documentação completa acerca da interface de linha de comandos do framework rails, acesse: <https://guides.rubyonrails.org/v4.2/command_line.html>

### Criando uma aplicação Rails
    rails new <nome>
Cria uma aplicação Rails com todas as dependências necessárias e com o nome especificado no parâmetro.

### Rodando a aplicação
    rails server
Inicializa um servidor web a partir da biblioteca WEBrick do Ruby, para receber as chamadas HTTP. Por padrão o servidor web fica à escuta na porta 3000, a porta padrão utilizada pelo Rails. Vale notar que o comando ‘server’ pode ser substituído pelo alias ‘s’, ex: `rails s`. Este comando possui **flags** que alteram o seu comportamento padrão, elas são as seguintes:
  * `-p <porta>`
    Informa a porta em que o servidor web deve escutar.
  * `-e <ambiente>`
    Informa o ambiente, se produção, desenvolvimento ou outro por exemplo.
  * `-b <ip>`
    Vincula o servidor ao IP informado, por padrão é sempre o localhost. Em aula utilizamos o IP ‘0.0.0.0’, o que possibilita acessarmos o servidor rodando na máquina virtual de fora dela.

### Gerador de código
    rails generate
Utiliza **templates** para criar código *boilerplate* rapidamente, salvando muito tempo ao desenvolvedor. Rodar o comando sem qualquer outro argumento retornará uma lista de geradores disponíveis, também é possível conseguir outros geradores através de gems. É possível utilizar o alias ‘g’ para o comando `generate`, ex: `rails g`\
Alguns dos templates disponíveis são:
#### Scaffold
    rails g scaffold <Model> <atributo>:<tipo> ...
Gera um CRUD completo (model, migration, controller, view e test) com os atributos especificados nos parâmetros.
#### Controller
    rails g controller <Nome> <ação> ...
Gera um Controller com as ações especificadas nos parâmetros.
#### Model
    rails g model <atributo>:<tipo> ...
Gera um Model (model, migration e tabela) com os atributos especificados nos parâmetros.
#### Task
    rails g task <ambiente> <nome>
Gera uma task com o nome especificado para o ambiente especificado.
#### Migration
    rails g migration
Cria uma migration. Pode ser utilizado para criar migrations no banco (criar tabelas, alterá-las, adicionar FKs etc). 
Ex: `rails g migration AddStateToCities state:references`
Adiciona uma FK de ‘State’ na tabela ‘Cities’.

### Destruidor de código
    rails destroy <template> <nome>
 Este comando é utilizado para excluir qualquer arquivo de um determinado template criado por um comando generate, como scaffolds, controllers, models e tasks. Pode ser utilizado com o alias ‘d’, ex: `rails d scaffold Cities`.

### Comandos de banco de dados
Estes comandos são precedidos, além do comando rails, do agrupador `db:` utilizado para agrupar tasks relacionadas ao banco de dados da aplicação.

    rails db:create
Cria o banco de dados para o ambiente atual.

    rails db:drop
Exclui o banco de dados para o ambiente atual.

    rails db:migrate
Roda as migrations do banco de dados para o ambiente atual.

    rails db:rollback
Desfaz o último arquivo de migration.

    rails db:seed
Executa o arquivo seed.rb, populando de forma rápida diversos objetos pré-definidos no banco de dados.

### Outros
    rails -- help
Lista os comandos disponíveis. É possível utilizar o alias ‘-h’ para o comando help, ex: `rails -h`.

    rails dbconsole
Utilizado para acessar a interface de linhas de comando do banco de dados utilizado na aplicação.

    bundle install
Instala todas as gems listadas no arquivo Gemfile do projeto. ‘bundle’ se refere a um comando de uma biblioteca Ruby para gestão de dependências.







