Feature: Organismos
  En este caso de prueba se debe verificar que al ingresar a https://www.argentina.gob.ar/organismos estan  todos estos organismos y ministerios aqui listados y sus links funcionan
  01- Casa Rosada
  02- Secretaría General
  03- Secretaría Legal y Técnica
  04- Sedronar
  05- Secretaría de Relaciones Políticas y Parlamentarias
  06- Secretaría de Asuntos Estratégicos
  07- Secretaría de Comunicación Pública
  08- Secretaría de Coordinación Interministerial
  09- Secretaría de Coordinación de Políticas Públicas
  10- Sistema Federal de Medios y Contenidos Públicos
  11- Agencia de Administración de Bienes del Estado
  12- Unidad Plan Belgrano
  13- Dirección Nacional de Inversión Pública
  14- Ministerio de Educación, Cultura, Ciencia y Tecnología
  15- Ministerio de Defensa
  16- Ministerio de Salud y Desarrollo Social
  17- Ministerio de Hacienda
  18- Ministerio del Interior, Obras Públicas y Vivienda
  19- Ministerio de Justicia y Derechos Humanos
  20- Ministerio de Producción y Trabajo
  21- Ministerio de Relaciones Exteriores y Culto
  22- Ministerio de Seguridad
  23- Ministerio de Transporte
  24- Corte Suprema de Justicia de la Nación
  25- Ministerio Público Fiscal – Procuración General de la Nación
  26- Ministerio Público de la Defensa
  27- Congreso de la Nación Argentina
  28- Honorable Senado de la Nación
  29- Honorable Cámara de Diputados de la Nación

  @organismos
  Scenario: Poder Ejecutivo Nacional
    Then  01- Casa Rosada
    Then  02- Secretaría General
    Then  03- Secretaría Legal y Técnica
    Then  04- Sedronar

  @organismos
  Scenario: Jefatura de Gabinete de Ministros
    Then  00- Jefatura de Gabinete de Ministros
    Then  05- Secretaría de Relaciones Políticas y Parlamentarias
    Then  06- Secretaría de Asuntos Estratégicos
    Then  07- Secretaría de Comunicación Pública
    Then  08- Secretaría de Coordinación Interministerial
    Then  09- Secretaría de Coordinación de Políticas Públicas
    Then  10- Sistema Federal de Medios y Contenidos Públicos
    Then  11- Agencia de Administración de Bienes del Estado
    Then  12- Unidad Plan Belgrano
    Then  13- Dirección Nacional de Inversión Pública

  @organismos
  Scenario: Ministerios
    Then  14- Ministerio de Educación, Cultura, Ciencia y Tecnología
    Then  15- Ministerio de Defensa
    Then  16- Ministerio de Salud y Desarrollo Social
    Then  17- Ministerio de Hacienda
    Then  18- Ministerio del Interior, Obras Públicas y Vivienda
    Then  19- Ministerio de Justicia y Derechos Humanos
    Then  20- Ministerio de Producción y Trabajo
    Then  21- Ministerio de Relaciones Exteriores y Culto
    Then  22- Ministerio de Seguridad
    Then  23- Ministerio de Transporte

  @organismos
  Scenario: Poder Judicial de la Nación
    Then  24- Corte Suprema de Justicia de la Nación
    Then  25- Ministerio Público Fiscal – Procuración General de la Nación
    Then  26- Ministerio Público de la Defensa

  @organismos
  Scenario: Poder Legislativo Nacional
    Then  27- Congreso de la Nación Argentina
    Then  28- Honorable Senado de la Nación
    Then  29- Honorable Cámara de Diputados de la Nación


