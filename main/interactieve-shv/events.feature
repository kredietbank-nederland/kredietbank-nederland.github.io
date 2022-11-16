#language: nl
Functionaliteit: Events adapter

  Scenario: Schuldhulpverlening gebeurtenissen worden correct vertaald
    Wanneer een schuldhulpverlening gebeurtenis wordt genotificeerd
    Dan is verstuur mailing op basis van gebeurtenis verstuurd

  Scenario: Overige gebeurtenissen worden genegeerd
    Wanneer een gebeurtenis wordt genotificeerd
    Dan is verstuur mailing op basis van gebeurtenis niet verstuurd