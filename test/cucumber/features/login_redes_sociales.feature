Feature: Login redes sociales
  Ingresar a todas las redes sociales con usuario test

  @login_facebook @login
  Scenario: Ingresar a facebook con usuario test
    Then Ingresar a facebook con usuario test

  @login_google @login
  Scenario: Ingresar a google con usuario test
    Then Ingresar a google con usuario test

  @login_twitter @login
  Scenario: Ingresar a twitter con usuario test
    Then Ingresar a twitter con usuario test

  @login_instagram @login
  Scenario: Ingresar a instagram con usuario test
    Then Ingresar a instagram con usuario test

  @login_youtube @login
  Scenario: Ingresar a youtube con usuario test
    Then Ingresar a youtube con usuario test

#    cucumber -t @login -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/login_redes_sociales/login_redes_sociales.html