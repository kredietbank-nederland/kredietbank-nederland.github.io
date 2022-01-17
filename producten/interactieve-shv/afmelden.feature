#language: nl
Functionaliteit: Afmelden

  Scenario: Verstuur afmeld bevestiging mailing
    Gegeven de gebeurtenis "SchuldhulpverleningGestart"
    En de gebeurtenis "AangemeldVoorInteractieveSHV"
    Wanneer de gebeurtenissen zijn toegepast
    En de afmelding is verwerkt
    En alle wijzigingen zijn verwerkt
    Dan is de gebeurtenis "AfgemeldVoorInteractieveSHV" geregistreerd
    En is de mailing "AfgemeldVoorInteractieveSHV" verstuurd
    En zijn er exact 2 gebeurtenissen geregistreerd
  
  Scenario: Geef fout wanneer een niet aangemelde schuldhulpverlening wordt afgemeld
    Gegeven de gebeurtenis "SchuldhulpverleningGestart"
    En de gebeurtenis "AfgemeldVoorInteractieveSHV"
    Wanneer de gebeurtenissen zijn toegepast
    En de afmelding is verwerkt met een fout
    Dan moet fout "SchuldhulpverleningFout" met tekst "Afmelden kan alleen als de interactie SHV ook aangemeld is." zich hebben voorgedaan

  Scenario: Geef fout wanneer de afmeldcodes bij afmelden niet overeenkomen
    Gegeven de gebeurtenis "SchuldhulpverleningGestart"
    En de gebeurtenis "AangemeldVoorInteractieveSHV"
    Wanneer de gebeurtenissen zijn toegepast
    En de afmelding met aan afwijkende afmeldcode is verwerkt
    Dan moet fout "SchuldhulpverleningFout" met tekst "De afmeldcodes komen niet overeen." zich hebben voorgedaan