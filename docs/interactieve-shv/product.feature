#language: nl
Functionaliteit: Product

  Scenario: Kan mailingen versturen
    Gegeven dossiers
    Wanneer de applicatie is gestart
    Dan zijn de mailingen verstuurd

  @UseAzureFunction
  Scenario: Kan uitschrijven voor mailingen
    Gegeven dossiers
    Wanneer de applicatie is gestart
    En een dossier is aangemeld voor interactieve SHV
    En het dossier wordt afgemeld
    Dan is het dossier uitgeschreven
