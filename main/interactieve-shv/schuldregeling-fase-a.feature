#language: nl
Functionaliteit: Schuldregeling fase a

  Abstract Scenario: Een casus met aanmaakreden <aanmaakreden> resulteert in gebeurtenis
    Gegeven een casus
    En de casus heeft anmaakreden "<aanmaakreden>"
    En schuldregeling fase a is gestart
    Wanneer de casus is verwerkt
    Dan is de gebeurtenis "<wel>" geregistreerd
    En is de gebeurtenis "<niet>" niet geregistreerd

    Voorbeelden:
    | aanmaakreden  | wel                         | niet                        |
    | NA extern     | ExterneStabilisatieGestart  | StabilisatieGestart         |
    | Anders        | StabilisatieGestart         | ExterneStabilisatieGestart  | 

  Scenario: Verstuur stabilisatie gestart mailing
    Gegeven een casus
    En schuldregeling fase a is gestart
    Wanneer de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "AangemeldVoorInteractieveSHV" geregistreerd
    En is de gebeurtenis "StabilisatieGestart" geregistreerd
    En is de gebeurtenis "ExterneStabilisatieGestart" niet geregistreerd
    En is de mailing "StabilisatieGestart" verstuurd
    En zijn er exact 4 gebeurtenissen geregistreerd

  Scenario: Verstuur geen stabilisatie gestart mailing bij externe stabilisatie
    Gegeven een casus
    En de casus wordt extern gestabiliseerd
    En schuldregeling fase a is gestart
    Wanneer de casus is verwerkt
    En alle wijzigingen zijn verwerkt    
    Dan is de gebeurtenis "AangemeldVoorInteractieveSHV" geregistreerd
    En is de gebeurtenis "ExterneStabilisatieGestart" geregistreerd
    En is de gebeurtenis "StabilisatieGestart" niet geregistreerd
    En is de mailing "StabilisatieGestart" niet verstuurd
    En zijn er exact 3 gebeurtenissen geregistreerd

  Scenario: Schuldhulpverlening is niet aangemeld als interactief wanneer aanvraagdatum voor startdatum ligt
    Gegeven een casus
    En schuldregeling fase a is gestart
    En schuldregeling aanmelddatum ligt voor de interactieve SHV startdatum
    Wanneer de casus is verwerkt 
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "AangemeldVoorInteractieveSHV" niet geregistreerd
    En is de gebeurtenis "StabilisatieGestart" geregistreerd
    En is de mailing "StabilisatieGestart" niet verstuurd
    En zijn er exact 2 gebeurtenissen geregistreerd

  Scenario: Registreer stabilisatie afgewezen gebeurtenis
    Gegeven een casus
    En schuldregeling fase a is gestart
    En schuldregeling is afgewezen
    En de gebeurtenis "SchuldhulpverleningGestart"
    En de gebeurtenis "AangemeldVoorInteractieveSHV"
    En de gebeurtenis "StabilisatieGestart"
    Wanneer de gebeurtenissen zijn toegepast
    En de casus is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "StabilisatieAfgewezen" geregistreerd
    En is er exact één gebeurtenis geregistreerd