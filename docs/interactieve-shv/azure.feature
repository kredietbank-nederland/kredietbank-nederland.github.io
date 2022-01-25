#language: nl
Functionaliteit: Azure adapter

  Scenario: Kan een afmeldcode ontvangen
    Wanneer een afmeldcode is verstuurd
    Dan is de afmeldcode ontvangen

  @IntegratieTest
  Scenario: Kan een afmeldcode verwerken
    Gegeven een afmeldcode
    Wanneer de applicatie heeft gedraaid
    Dan is de afmeldcode verwerkt