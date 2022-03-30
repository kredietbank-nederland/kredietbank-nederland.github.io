#language: nl
Functionaliteit: Email adapter

  Scenario: Email wordt verstuurd naar de ontvanger
    Gegeven een email bericht aan ontvanger "ontvanger@domein.nl"
    En verstuur aan is niet ingesteld
    Wanneer het bericht wordt verstuurd
    Dan is het bericht verstuurd naar "ontvanger@domein.nl"

  Scenario: Email wordt verstuurd naar de tester
    Gegeven een email bericht aan ontvanger "ontvanger@domein.nl"
    En verstuur aan is ingesteld op "tester@domein.nl"
    Wanneer het bericht wordt verstuurd
    Dan is het bericht verstuurd naar "tester@domein.nl"