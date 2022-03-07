#language: nl
Functionaliteit: Mailing adapter

  Abstract Scenario: De mailing "<mailing>" bevat de juiste informatie
    Wanneer de mailing "<mailing>" wordt verstuurd met afmeldcode "<afmeldcode>"
    Dan is het onderwerp van de mailing "<onderwerp>"
    En bevat de mailing de tekst "<pre header>"    
    En bevat de mailing de afmeld url met afmeldcode "<afmeldcode>"
    En is het cdn url vervangen

    Voorbeelden:
      | mailing                           | afmeldcode                            | onderwerp                 | pre header                      |
      | StabilisatieGestart               | 14e0d421-4e6c-4633-8231-8971723541f2  | Jouw schuldhulproute      | Stabilisatiefase                |
      | SchuldregelingFaseBGestart        | 6b9c490f-c437-4a1d-b022-3545887a1a3b  | Jouw schuldhulproute      | Schuldregelingsfase             |
      | SchuldenGeinventariseerd          | 863c5d15-d71f-41e0-a969-b91d1922337d  | Jouw schuldhulproute      | Schuldregelingsfase             |
      | SchuldregelingVoorlopigGeweigerd  | b72b2a2c-05e4-4559-b691-f9d90cf3b952  | Jouw schuldhulproute      | Geen akkoord                    |
      | SchuldbemiddelingGestart          | bf4fc044-792f-4a3f-9691-fd2f4bf8abd0  | Jouw schuldhulproute      | Schuldbemiddeling               |
      | HercontroleUitgevoerd             | c95c97a8-c173-4d1d-9147-a31869c03947  | Jouw schuldhulproute      | Schuldbemiddeling: Hercontrole  |
      | SchuldbemiddelingGeslaagd         | 0afe5410-2d69-48da-ba74-f34d3027a911  | Jouw schuldhulproute      | Schuldenvrij                    |
      | SchuldsaneringGestart             | 7d6dd251-3448-4b07-a370-95e1a9b0cf21  | Jouw schuldhulproute      | Saneringskrediet                |
      | SchuldsaneringGeslaagd            | df858b85-81b7-42a0-96bc-8fa2c1c48d76  | Jouw schuldhulproute      | Schuldenvrij                    |
      | AfgemeldVoorInteractieveSHV       | 00000000-0000-0000-0000-000000000000  | Jouw schuldhulproute      | Je afmelding is verwerkt        |