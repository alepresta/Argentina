Feature: Organismos
  En este caso de prueba se debe verificar que al ingresar a https://www.argentina.gob.ar/organismos estan  todos estos organismos y ministerios aqui listados y sus links funcionan
  Poder Ejecutivo Nacional (debe tener 4 organismos)
  Casa Rosada,  Secretaría General, Secretaría Legal y Técnica, Sedronar

  Jefatura de Gabinete (debe tener 9 organismos)
  Secretaría de Relaciones Políticas y Parlamentarias, Secretaría de Asuntos Estratégicos,  Secretaría de Comunicación Pública,  Secretaría de Coordinación Interministerial, Secretaría de Coordinación de Políticas Públicas, Sistema Federal de Medios y Contenidos Públicos,  Agencia de Administración de Bienes del Estado,  Unidad Plan Belgrano,  Dirección Nacional de Inversión Pública.

  Ministerios (deben existir 19 ministerios)
  Ministerio de Agroindustria,  Ministerio de Ambiente y Desarrollo Sustentable,  Ministerio de Ciencia, Tecnología e Innovación Productiva,  Ministerio de Cultura,  Ministerio de Defensa,  Ministerio de Desarrollo Social,  Ministerio de Energía,  Ministerio de Hacienda,  Ministerio del Interior, Obras Públicas y Vivienda,  Ministerio de Educación,  Ministerio de Justicia y Derechos Humanos,  Ministerio de Modernización,  Ministerio de Producción,  Ministerio de Relaciones Exteriores y Culto,  Ministerio de Salud,  Ministerio de Seguridad,  Ministerio de Trabajo, Empleo y Seguridad Social,  Ministerio de Transporte,  Ministerio de Turismo.

  Poder Judicial de la Nación (deben tener 3 organismos)
  Corte Suprema de Justicia de la Nación,  Ministerio Público Fiscal – Procuración General de la Nación,  Ministerio Público de la Defensa.

  Poder Legislativo Nacional (deben tener 3 organismos)
  Congreso de la Nación Argentina,  Honorable Senado de la Nación,  Honorable Cámara de Diputados de la Nación.

  @organismos @todos
  Scenario: Poder Ejecutivo Nacional
    Then Casa Rosada
    Then Secretaría General
    Then Secretaría Legal y Técnica
    Then Sedronar

  @organismos  @todos
  Scenario: Jefatura de Gabinete
    Then Jefatura de Gabinete de Ministros
    Then Secretaría de Relaciones Políticas y Parlamentarias
    Then Secretaría de Asuntos Estratégicos
    Then Secretaría de Comunicación Pública
    Then Secretaría de Coordinación Interministerial
    Then Secretaría de Coordinación de Políticas Públicas
    Then Sistema Federal de Medios y Contenidos Públicos
    Then Agencia de Administración de Bienes del Estado
    Then Unidad Plan Belgrano
    Then Dirección Nacional de Inversión Pública

  @organismos  @todos
  Scenario: Ministerios
    Then Ministerio de Agroindustria
    Then Ministerio de Ambiente y Desarrollo Sustentable
    Then Ministerio de Ciencia, Tecnología e Innovación Productiva
    Then Ministerio de Cultura
    Then Ministerio de Defensa
    Then Ministerio de Desarrollo Social
    Then Ministerio de Energía
    Then Ministerio de Hacienda
    Then Ministerio del Interior, Obras Públicas y Vivienda
    Then Ministerio de Educación
    Then Ministerio de Justicia y Derechos Humanos
    Then Ministerio de Modernización
    Then Ministerio de Producción
    Then Ministerio de Relaciones Exteriores y Culto
    Then Ministerio de Salud
    Then Ministerio de Seguridad
    Then Ministerio de Trabajo, Empleo y Seguridad Social
    Then Ministerio de Transporte
    Then Ministerio de Turismo

  @organismos  @todos
  Scenario: Judicial de la Nación
    Then Corte Suprema de Justicia de la Nación
    Then Ministerio Público Fiscal – Procuración General de la Nación
    Then Ministerio Público de la Defensa

  @organismos  @todos
  Scenario: Poder Legislativo Nacional
    Then Congreso de la Nación Argentina
    Then Honorable Senado de la Nación
    Then Honorable Cámara de Diputados de la Nación

#    cucumber -t @organismos -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/organismos/organismos.html
