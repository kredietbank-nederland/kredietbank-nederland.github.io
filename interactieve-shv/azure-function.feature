#language: nl
Functionaliteit: Azure function runtime

  @IntegratieTest
  Scenario: Afmelding ontvangen
    Gegeven de applicatie is gestart
    Wanneer een afmeldcode is verstuurd
    Dan is de afmeldcode geregistreerd