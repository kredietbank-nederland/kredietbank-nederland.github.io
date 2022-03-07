#language: nl
@Database
Functionaliteit: Database adapter

  @Dev
  Scenario: Kan casussen verwerken
    Gegeven casussen
    Wanneer de applicatie heeft gedraaid
    Dan zijn de casussen verwerkt

  Scenario: Kan een volledige casus opvragen
    Gegeven een casus met alle producten
    Wanneer de casus is opgevraagd
    Dan is de casus volledig