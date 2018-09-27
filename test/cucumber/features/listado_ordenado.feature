Feature:  Listado Ordenado por fechas
  En este caso de prueba se verificara que el listado Noticias se muestre ordenado por fecha verificando las primeras 4 a 8 noticias, tambien seleccionando VER TODAS. Las noticias deben estar ordenadas mostrando primero la mas reciente. Se verificaran los listados de las páginas

  1-  https://www.argentina.gob.ar/finanzas
  2-  https://www.argentina.gob.ar/vuce/novedades
  3-  https://www.argentina.gob.ar/anmat
  4-  https://www.argentina.gob.ar/salud
  5-  https://www.argentina.gob.ar/hacienda
  6-  https://www.argentina.gob.ar/politicassociales
  7-  https://www.argentina.gob.ar/transporte

  @listado_ordenado
  Scenario: Listado Ordenado por fechas
    Then   Listado ordenado para argentina_gob_ar finanzas
    Then   Listado ordenado para argentina_gob_ar vuce novedades
    Then   Listado ordenado para argentina_gob_ar anmat
    Then   Listado ordenado para argentina_gob_ar salud
    Then   Listado ordenado para argentina_gob_ar hacienda
    Then   Listado ordenado para argentina_gob_ar politicassociales
    Then   Listado ordenado para argentina_gob_ar transporte

#    cucumber -t @listado_ordenado -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/listado_ordenado/listado_ordenado.html