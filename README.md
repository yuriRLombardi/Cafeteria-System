# Cafeteria

Este projeto é uma aplicação web Java para gerenciar uma cafeteria, permitindo cadastro e autenticação de usuários, registro e manutenção de produtos, consulta de cardápio e operações relacionadas a validade e entrega.

## Visão geral

A aplicação oferece as seguintes funcionalidades:
- Cadastro de usuários da cafeteria
- Login e controle de sessão para usuário autenticado
- Cadastro de produtos com nome, descrição, preço, validade, ingredientes e taxa
- Listagem de produtos do cardápio
- Atualização e remoção de produtos
- Visualização de validade, ingredientes e cálculo de entrega para produtos
- Uso de cookies para armazenar informações temporárias sobre o produto

## Estrutura do projeto

A aplicação segue a arquitetura MVC (Model-View-Controller):

- Model (modelo): `src/main/java/model/`
  - Contém as entidades do sistema e as classes DAO que gerenciam persistência e lógica de negócios.
- View (visão): `src/main/webapp/`
  - Contém páginas JSP, HTML, CSS e recursos de interface usados para exibir o cardápio, formulários de cadastro/login e status.
- Controller (controlador): `src/main/java/controller/`
  - `CafeteriaController.java` - servlet que trata operações de produtos
  - `UsuarioController.java` - servlet que trata autenticação, cadastro, logout e remoção de usuário
- `src/main/resources/META-INF/persistence.xml` - configuração JPA/Hibernate para conexão com MySQL
- `pom.xml` - arquivo de build Maven com dependências e configuração do projeto

## Tecnologias usadas

- Java 21
- Jakarta Servlet / JSP
- JSTL Core e Fucntions
- Maven
- JPA com Hibernate
- MySQL Connector/J
- MySQL como banco de dados
- HTML, CSS e JavaScript para interface web

## Build e execução

1. Configure o banco de dados MySQL com os dados de conexão definidos em `src/main/resources/META-INF/persistence.xml`.

### Opção 1: Usando Maven no terminal

2. No diretório do projeto, execute:
   ```bash
   mvn clean package
   ```
3. Implante o arquivo WAR gerado no servidor de aplicação compatível com Jakarta EE (por exemplo, Tomcat).
4. Acesse a aplicação pelo navegador usando a URL do servidor.

### Opção 2: Usando Eclipse IDE for Enterprise Java and Web Developers

2. Abra o Eclipse e escolha `File > Import...`.
3. Selecione `Existing Maven Projects` em `Maven` e clique em `Next`.
4. Navegue até a pasta do projeto e clique em `Finish`.
5. Aguarde o Eclipse importar as dependências e construir o projeto.
6. Configure um servidor de aplicação no Eclipse (por exemplo, Tomcat ou WildFly):
   - Vá em `Window > Show View > Servers`.
   - Clique com o botão direito em `No servers are available. Click this link to create a new server...`.
   - Escolha o servidor e a versão compatível com Jakarta EE.
7. Clique com o botão direito no projeto importado, escolha `Run As > Run on Server`.
8. O Eclipse publicará automaticamente o projeto no servidor.
9. Abra o navegador e acesse a URL fornecida pelo Eclipse para a aplicação.

## Configuração de banco de dados

O `persistence.xml` define a conexão com um banco MySQL local:
- URL: `jdbc:mysql://localhost:3306/cafeteria`
- Driver: `com.mysql.cj.jdbc.Driver`
- Usuário: `cafeteria`
- Senha: `cafe`
- Dialeto: `org.hibernate.dialect.MySQL8Dialect`
- `hibernate.hbm2ddl.auto=update` para atualizar o esquema automaticamente

> Ajuste as credenciais e a URL conforme necessário para o seu ambiente.

# Minha Contribuição

- Estruturação do Projeto
- Criação do Banco de dados
- Desenvolvimento Back-end da aplicação
- Participação parcial no desenvolvimento front-end com Javascript e aplicação do JSTL
