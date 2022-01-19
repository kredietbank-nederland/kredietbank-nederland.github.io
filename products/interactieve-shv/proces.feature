#language: nl
Functionaliteit: Process

  Abstract Scenario: Dossiers die niet zijn aangemeld retourneren geen mailing bij gebeurtenis "<gebeurtenis>"
    Gegeven de gebeurtenis "SchuldhulpverleningGestart"
    Wanneer de gebeurtenissen zijn toegepast
    Dan mag verstuur mailing op basis van gebeurtenis "<gebeurtenis>" geen mailing retourneren

    Voorbeelden:
      | gebeurtenis                             |
      | StabilisatieGestart                     |
      | SchuldregelingFaseBGestart              |
      | SchuldenGeinventariseerd                |
      | SchuldregelingVoorlopigGeweigerd        |
      | SchuldbemiddelingGestart                |
      | SchuldbemiddelingGeslaagd               |
      | SchuldsaneringGestart                   |
      | SchuldsaneringGeslaagd                  |

  Abstract Scenario: Clienten die zich hebben afgemeld ontvangen geen mailing bij gebeurtenis "<gebeurtenis>"
    Gegeven de gebeurtenis "SchuldhulpverleningGestart"
    En de gebeurtenis "AangemeldVoorInteractieveSHV"
    En de gebeurtenis "AfgemeldVoorInteractieveSHV"
    Wanneer de gebeurtenissen zijn toegepast
    Dan mag verstuur mailing op basis van gebeurtenis "<gebeurtenis>" geen mailing retourneren

    Voorbeelden:
      | gebeurtenis                             |
      | StabilisatieGestart                     |
      | SchuldregelingFaseBGestart              |
      | SchuldenGeinventariseerd                |
      | SchuldregelingVoorlopigGeweigerd        |
      | SchuldbemiddelingGestart                |
      | SchuldbemiddelingGeslaagd               |
      | SchuldsaneringGestart                   |
      | SchuldsaneringGeslaagd                  |

  Abstract Scenario: Mailing "<mailing>" mag maar één keer verstuurd worden bij gebeurtenis "<gebeurtenis>"
    Gegeven de gebeurtenis "SchuldhulpverleningGestart"
    En de gebeurtenis "AangemeldVoorInteractieveSHV"
    En de gebeurtenis MailingVerstuurd voor mailing "<mailing>"
    Wanneer de gebeurtenissen zijn toegepast
    Dan mag verstuur mailing op basis van gebeurtenis "<gebeurtenis>" geen mailing retourneren

    Voorbeelden:
      | gebeurtenis                             | mailing                                 |
      | StabilisatieGestart                     | StabilisatieGestart                     |
      | SchuldregelingFaseBGestart              | SchuldregelingFaseBGestart              |
      | SchuldenGeinventariseerd                | SchuldenGeinventariseerd                |
      | SchuldregelingVoorlopigGeweigerd        | SchuldregelingVoorlopigGeweigerd        |
      | SchuldbemiddelingGestart                | SchuldbemiddelingGestart                |
      | SchuldbemiddelingGeslaagd               | SchuldbemiddelingGeslaagd               |
      | SchuldsaneringGestart                   | SchuldsaneringGestart                   |
      | SchuldsaneringGeslaagd                  | SchuldsaneringGeslaagd                  |