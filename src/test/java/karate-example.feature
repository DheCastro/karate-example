Feature: Pessoas do StarWars

Background:

  * url "https://swapi.co/api"

@dojo
Scenario: Crie um teste de API que retorne todos os planetas do SW. Valide que TODO o retorno está de acordo com o esperado.
  Given path 'planets'
  When method get
  Then status 200
  * def json = read('planetas.json')
  And match json == response

@dojo
Scenario: Crie um teste que valide o modelo da StarShip 9.
  Given path 'starships/9'
  When method get
  Then status 200
  * def starships = "DS-1 Orbital Battle Station"
  And print starships
  And print response.model
  And match starships == response.model