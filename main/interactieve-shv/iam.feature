#language: nl
Functionaliteit: IAM adapter

  Scenario: Kan authenticeren met juiste identiteit
    Wanneer er met een geldige identiteit wordt aangemeld
    Dan is de identiteit geauthenticeerd

  Scenario: Kan niet authenticeren met onjuiste identiteit
    Wanneer er met een ongeldige identiteit wordt aangemeld
    Dan is de identiteit niet geauthenticeerd

  Scenario: Kan niet authenticeren met onjuiste secret
    Wanneer er met een ongeldige secret wordt aangemeld
    Dan is de identiteit niet geauthenticeerd

