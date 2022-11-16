#language: nl
@UseAzureFunction
Functionaliteit: Azure function runtime

  @IntegratieTest
  Scenario: Afmelding ontvangen
    Wanneer een afmeldcode is verstuurd
    Dan is de afmeldcode geregistreerd