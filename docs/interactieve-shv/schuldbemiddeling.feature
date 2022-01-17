#language: nl
Functionaliteit: Schuldbemiddeling 

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

  Abstract Scenario: Een schuldbemiddeling met eindecode <eindcode> resulteert in gebeurtenis
    Gegeven schuldbemiddeling is gestart
    En schuldbemiddeling is beëindigt met eindcode "<eindcode>"    
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    Dan is de gebeurtenis "<gebeurtenis>" geregistreerd

    Voorbeelden:
    | eindcode | gebeurtenis                |
    | SB-Geslaagd | SchuldbemiddelingGeslaagd  |
    | SB-Mislukt  | SchuldbemiddelingMislukt   | 

  Scenario: Verstuur schuldbemiddeling gestart mailing
    Gegeven schuldbemiddeling is gestart
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "SchuldbemiddelingGestart" geregistreerd
    En is de mailing "SchuldbemiddelingGestart" verstuurd    
    En zijn er exact 2 gebeurtenissen geregistreerd

  Scenario: Verstuur schuldbemiddeling geslaagd mailing
    Gegeven schuldbemiddeling is gestart
    En schuldbemiddeling is geslaagd
    En de gebeurtenis "SchuldbemiddelingGestart"
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "SchuldbemiddelingGeslaagd" geregistreerd
    En is de mailing "SchuldbemiddelingGeslaagd" verstuurd    
    En zijn er exact 2 gebeurtenissen geregistreerd

  Scenario: Registreer schuldbemiddeling mislukt gebeurtenis
    Gegeven schuldbemiddeling is gestart
    En schuldbemiddeling is mislukt
    En de gebeurtenis "SchuldbemiddelingGestart"
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "SchuldbemiddelingMislukt" geregistreerd
    En is er exact één gebeurtenis geregistreerd

  Scenario: Geef fout wanneer de schuldbemiddeling is gestart zonder dat de schuldregeling geslaagd is    
    Gegeven schuldregeling is afgewezen
    En schuldbemiddeling is gestart
    Wanneer de casus is verwerkt met een fout
    Dan moet fout "SchuldhulpverleningFout" met tekst "Schuldbemiddeling gestart zonder geslaagde schuldregeling." zich hebben voorgedaan