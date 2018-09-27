Feature: Mas Visitados
  En este caso de prueba se espera que las páginas y trámites aqui listados tengan una respuesta de petición correcta.

  Trámites más visitados
        01-   https://www.argentina.gob.ar/cuando-y-donde-cobro-en-anses
        02-   https://www.argentina.gob.ar/seguir-el-estado-de-tramite-del-dni
        03-   https://www.argentina.gob.ar/solicitar-la-tarifa-social-sube
        04-   https://www.argentina.gob.ar/inscribirse-en-becas-progresar
        05-   https://www.argentina.gob.ar/renovar-el-dni
        06-   https://www.argentina.gob.ar/solicitar-la-tarifa-social-sube
        07-   https://www.argentina.gob.ar/obtener-tu-constancia-de-cuil
        08-   https://www.argentina.gob.ar/consultar-el-calendario-de-pagos-de-anses
        09-   https://www.argentina.gob.ar/obtener-certificacion-negativa-de-anses
        10-   https://www.argentina.gob.ar/dni-en-24-horas-y-expres-para-argentinos

  Páginas más visitadas
        01-   https://www.argentina.gob.ar/sube
        02-   https://www.argentina.gob.ar/becasprogresar
        03-   https://www.argentina.gob.ar/educacion
        04-   https://www.argentina.gob.ar/consejos-para-el-invierno
        05-   https://www.argentina.gob.ar/cuando-y-donde-cobro-en-anses
        06-   https://www.argentina.gob.ar/interior/feriados
        07-   https://www.argentina.gob.ar/redsube
        08-   https://www.argentina.gob.ar/becasprogresar/educacionsuperior
        09-   https://www.argentina.gob.ar/dni
        10-   https://www.argentina.gob.ar/seguir-el-estado-de-tramite-del-dni
        11-   https://www.argentina.gob.ar/elestadoentubarrio/buenosaires
        12-   https://www.argentina.gob.ar/solicitar-la-tarifa-social-sube
        13-   https://www.argentina.gob.ar/cnrt
        14-   https://www.argentina.gob.ar/inscribirse-en-becas-progresar
        15-   https://www.argentina.gob.ar/renovar-el-dni
        16-   https://www.argentina.gob.ar/solicitar-la-tarifa-social-sube?
        17-   https://www.argentina.gob.ar/mi-sube
        18-   https://www.argentina.gob.ar/dni-para-argentinos-residentes-en-el-pais
        19-   https://www.argentina.gob.ar/becasprogresar/novedades-adjudicados
        20-   https://www.argentina.gob.ar/interior

  Otros:

        01-   https://www.argentina.gob.ar/consultar-los-datos-de-la-licencia-nacional-de-conducir
        02-   https://www.argentina.gob.ar/buscar
        03-   https://www.argentina.gob.ar/seguir-el-estado-de-tramite-del-dni
        04-   https://www.argentina.gob.ar/consultar-por-cambio-de-dni
        05-   https://www.argentina.gob.ar/postulaciones
        06-   https://www.argentina.gob.ar/hacienda
        07-   https://www.argentina.gob.ar/finanzas
        08-   https://www.argentina.gob.ar/donar-organos/formulario



   @tramites  @mas_visitados  @todos
  Scenario: Trámites más visitados
    Given 01 cuando y donde cobro en anses
    Given 02 seguir el estado de tramite del dni
    Given 03 solicitar la tarifa social sube
    Given 04 inscribirse en becas progresar
    Given 05 renovar el dni
    Given 06 solicitar la tarifa social sube
    Given 07 obtener tu constancia de cuil
    Given 08 consultar el calendario de pagos de anses
    Given 09 obtener certificacion negativa de anses
    Given 10 dni en 24 horas y expres para argentinos


  @paginas  @mas_visitados  @todos
  Scenario: Páginas más visitadas
    Given 01 sube
    Given 02 becasprogresar
    Given 03 educacion
    Given 04 consejos para el invierno
    Given 05 cuando y donde cobro en anses
    Given 06 interior feriados
    Given 07 redsube
    Given 08 becasprogresar educacionsuperior
    Given 09 dni
    Given 10 seguir el estado de tramite del dni
    Given 11 elestadoentubarrio buenosaires
    Given 12 solicitar la tarifa social sube
    Given 13 cnrt
    Given 14 inscribirse en becas progresar
    Given 15 renovar el dni
    Given 16 solicitar la tarifa social sube
    Given 17 mi sube
    Given 18 dni para argentinos residentes en el pais
    Given 19 becasprogresar novedades adjudicados
    Given 20 interior

  @otros @mas_visitados  @todos
  Scenario: Otros
    Given  01 argentina consultar los datos de la licencia nacional de conducir
    Given  02 argentina buscar
    Given  03 argentina seguir el estado de tramite del dni
    Given  04 argentina consultar por cambio de dni
    Given  05 argentina postulaciones
    Given  06 argentina hacienda
    Given  07 argentina finanzas
    Given  08 argentina donar organos formulario

#    cucumber -t @mas_visitados -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/mas_visitados/mas_visitados.html