#language: nl
Functionaliteit: Schuldsanering

  Achtergrond:  
    Gegeven een casus
    En schuldregeling fase a is gestart
    En schuldregeling fase b is gestart
    En de schulden zijn geïnventariseerd
    En schuldregeling is geslaagd
    En de gebeurtenis "SchuldhulpverleningGestart"
    En de gebeurtenis "AangemeldVoorInteractieveSHV"
    En de gebeurtenis "StabilisatieGestart"
    En de gebeurtenis "SchuldregelingFaseBGestart"
    En de gebeurtenis "SchuldenGeinventariseerd"
    En de gebeurtenis "SchuldregelingGeslaagd"

  Abstract Scenario: Een schuldsanering met eindecode <eindcode> resulteert in gebeurtenis
    Gegeven schuldsanering is gestart
    En schuldsanering is beëindigt met eindcode "<eindcode>"    
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    Dan is de gebeurtenis "<gebeurtenis>" geregistreerd

    Voorbeelden:
    | eindcode          | gebeurtenis             |
    | GB-1052           | SchuldsaneringMislukt   |
    | GB-5101           | SchuldsaneringMislukt   |
    | GB-5103           | SchuldsaneringMislukt   |
    | GB-5104           | SchuldsaneringMislukt   |
    | GB-5160           | SchuldsaneringMislukt   |
    | GB-5170           | SchuldsaneringMislukt   |
    | GB-5180           | SchuldsaneringMislukt   |
    | GB-5190           | SchuldsaneringMislukt   |
    | GB-5195           | SchuldsaneringMislukt   |
    | GB-5196           | SchuldsaneringMislukt   |
    | GB-5198           | SchuldsaneringMislukt   |
    | GB-5199           | SchuldsaneringMislukt   |
    | GB-7040           | SchuldsaneringMislukt   |
    | NULL              | SchuldsaneringGeslaagd  |
    |                   | SchuldsaneringGeslaagd  |
    | GB-5099           | SchuldsaneringGeslaagd  |
    | GB-5100           | SchuldsaneringGeslaagd  |
    | GB-5102           | SchuldsaneringGeslaagd  |
    | GB-5105           | SchuldsaneringGeslaagd  |
    | GB-5200           | SchuldsaneringGeslaagd  |
    | GB-5194           | SchuldsaneringGeslaagd  |
    | GB-5197           | SchuldsaneringGeslaagd  |
    | XX-1052           | SchuldsaneringGeslaagd  |

  Scenario: Verstuur schuldsanering gestart mailing
    Gegeven schuldsanering is gestart
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "SchuldsaneringGestart" geregistreerd
    En is de mailing "SchuldsaneringGestart" verstuurd    
    En zijn er exact 2 gebeurtenissen geregistreerd

  Scenario: Verstuur schuldsanering geslaagd mailing
    Gegeven schuldsanering is gestart
    En schuldsanering is geslaagd
    En de gebeurtenis "SchuldsaneringGestart"
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "SchuldsaneringGeslaagd" geregistreerd
    En is de mailing "SchuldsaneringGeslaagd" verstuurd    
    En zijn er exact 2 gebeurtenissen geregistreerd

  Scenario: Registreer schuldsanering mislukt gebeurtenis
    Gegeven schuldsanering is gestart
    En schuldsanering is mislukt
    En de gebeurtenis "SchuldsaneringGestart"
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "SchuldsaneringMislukt" geregistreerd
    En is er exact één gebeurtenis geregistreerd

  Scenario: Geef fout wanneer de schuldsanering is gestart zonder dat de schuldregeling geslaagd is    
    Gegeven schuldregeling is afgewezen
    En schuldsanering is gestart
    Wanneer de casus is verwerkt met een fout
    Dan moet fout "SchuldhulpverleningFout" met tekst "Schuldsanering gestart zonder geslaagde schuldregeling." zich hebben voorgedaan