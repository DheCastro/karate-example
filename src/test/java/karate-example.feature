Feature: Cadastro de Pessoas

  Background:

    * url "http://course-javatest.herokuapp.com"

  @newUser
  Scenario Outline: Cadastrar um novo usuário
    Given path 'users'
    And request query = read('<jsonFile>')
    When method post
    Then status 201
    And match response.email == <email>

    Examples:
      | jsonFile       | email               |
      | newUser_1.json | 'email_1@email.com' |
      | newUser_2.json | 'email_2@email.com' |

  @getUser
  Scenario Outline: Consultar um usuário
    Given path 'users/<id>'
    When method get
    Then status 200
    And match response.name == <name>

    Examples:
      | id  | name      |
      | 165 | 'Fellipe' |

  @updateUser
  Scenario Outline: Alterar um usuário
    Given path 'users/<id>'
    And request query = read('<jsonFile>')
    When method put
    Then status 200
    And match response.name == <name>
    And match response.email == <email>

    Examples:
      | id  | jsonFile        | name        | email                     |
      | 165 | updateUser.json | 'Fellipe M' | 'fellipe_email@email.com' |

  @deleteUser
  Scenario Outline: Apagar um usuário
    Given path 'users/<id>'
    When method delete
    Then status 204

    Examples:
      | id  |
      | 165 |