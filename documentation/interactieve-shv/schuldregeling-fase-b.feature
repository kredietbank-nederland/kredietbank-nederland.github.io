#language: nl
Functionaliteit: Schuldregeling fase b

  Achtergrond:  
    Gegeven een casus
    En schuldregeling fase a is gestart
    En de gebeurtenis "SchuldhulpverleningGestart"
    En de gebeurtenis "AangemeldVoorInteractieveSHV"
    En de gebeurtenis "StabilisatieGestart"

  Scenario: Verstuur schuldregeling gestart mailing
    Gegeven schuldregeling fase b is gestart
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt    
    Dan is de gebeurtenis "SchuldregelingFaseBGestart" geregistreerd
    En is de mailing "SchuldregelingFaseBGestart" verstuurd
    En zijn er exact 2 gebeurtenissen geregistreerd

  Scenario: Verstuur schulden geïnventariseerd mailing 
    Gegeven schuldregeling fase b is gestart
    En de schulden zijn geïnventariseerd
    En de gebeurtenis "SchuldregelingFaseBGestart"
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt    
    Dan is de gebeurtenis "SchuldenGeinventariseerd" geregistreerd
    En is de mailing "SchuldenGeinventariseerd" verstuurd    
    En zijn er exact 2 gebeurtenissen geregistreerd

  Scenario: Verstuur schuldregeling voorlopig geweigerd mailing 
    Gegeven schuldregeling fase b is gestart
    En de schulden zijn geïnventariseerd
    En de schuldregeling is voorlopig geweigerd
    En de gebeurtenis "SchuldregelingFaseBGestart"
    En de gebeurtenis "SchuldenGeinventariseerd"
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt    
    Dan is de gebeurtenis "SchuldregelingVoorlopigGeweigerd" geregistreerd
    En is de mailing "SchuldregelingVoorlopigGeweigerd" verstuurd
    En zijn er exact 2 gebeurtenissen geregistreerd

  Scenario: Registreer schuldregeling afgewezen gebeurtenis
    Gegeven schuldregeling fase b is gestart
    En schuldregeling is afgewezen
    En de gebeurtenis "SchuldregelingFaseBGestart"
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "SchuldregelingAfgewezen" geregistreerd
    En is er exact één gebeurtenis geregistreerd

  Scenario: Registreer schuldregeling geslaagd gebeurtenis
    Gegeven schuldregeling fase b is gestart
    En schuldregeling is geslaagd
    En de gebeurtenis "SchuldregelingFaseBGestart"
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "SchuldregelingGeslaagd" geregistreerd
    En is er exact één gebeurtenis geregistreerd

  Scenario: Geef fout wanneer de schulden geinventariseerd zijn zonder dat de schuldregeling gestart is
    Gegeven de schulden zijn geïnventariseerd
    Wanneer de casus is verwerkt met een fout
    Dan moet fout "SchuldhulpverleningFout" met tekst "Schulden geïnventariseerd zonder start schuldregeling." zich hebben voorgedaan

  Scenario: Geef fout wanneer de schuldregeling voorlopig is geweigerd zonder dat de schuldregeling gestart is
    Gegeven de schuldregeling is voorlopig geweigerd
    Wanneer de casus is verwerkt met een fout
    Dan moet fout "SchuldhulpverleningFout" met tekst "Schuldregegling voorlopig geweigerd zonder start schuldregeling." zich hebben voorgedaan

  Scenario: Geef fout wanneer de schuldregeling voorlopig is geweigerd zonder dat de schulden geinventariseerd zijn
    Gegeven schuldregeling fase b is gestart
    En de schuldregeling is voorlopig geweigerd
    Wanneer de casus is verwerkt met een fout
    Dan moet fout "SchuldhulpverleningFout" met tekst "Schuldregegling voorlopig geweigerd zonder dat de schulden zijn geïnventariseerd." zich hebben voorgedaan