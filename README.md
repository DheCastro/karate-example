# karate-example
Projeto de exemplo, utilizado para estudo de testes de serviços com o Karatê DSL.

* [Setup](#setup)
* [Documentação](#documentação)
* [API de Teste](#api-de-teste)
* [Passo a passo](#passo-a-passo)

##Setup

1. Java 8+
2. Maven 3.6.0

- Precisa instalar o Java JDK. Caso não tenha o Java instalado
- Após a instalação é necessário adicionar a variável JAVA_HOME nas variáveis de ambiente
- Precisa baixar o Maven. Caso não tenha o Maven instalado
- Após a descompactação é necessário registrá-lo nas variáveis de ambiente

>A instalação do Java e Maven varia de acordo com o sistema operacional (Linux, Windows e Mac)

>Você deve realizar as configurações do Java e Maven na IDE que você irá utilizar (ex: IntelliJ, Eclipse, VsCode e etc)

##Documentação

Vá para o Github do Karate DSL para encontrar a [documentação](https://github.com/intuit/karate).
 
##API de Teste

API usada para realizar os testes [site](https://swapi.co/api)

> Você pode validar as chamadas e respostas no site e comparar com o resultado dos testes no Karate.

##Passo a passo

1. Clone o projeto
2. Abra o projeto no seu IDE, no terminal, execute os comandos abaixo para atualizar as dependências e executar o teste:
```shell script
mvn clean install
mvn test -Dtest=KarateRunner
```
Após a execução do teste, será gerado um reporte em html. O caminho é indicado no console. Se preferir, acesse na pasta target/surefire-reports

Caso queira executar cenários específicos, você pode executar cenários com @tag.
Ex: Se quiser executar somente o cenário

```gherkin
@json
Scenario: Crie um teste de API que retorne todos os planetas do SW. Valide que TODO o retorno está de acordo com o esperado.
```
Execute o comando abaixo:
```shell script
mvn test -Dkarate.options="--tags @json" -Dtest=KarateRunner
``` 