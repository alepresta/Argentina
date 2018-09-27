
Feature: sube
  Este caso de prueba consiste en verificar la pagina https://www.argentina.gob.ar/redsube

  Verificar que la página https://www.argentina.gob.ar/redsube (que tenga status 200)
  Verificar que exista el acceso al formulario  Registrá tu tarjeta (y que estén los campos y el botón enviar)
  El link Ingresá al simulador lleve a https://www.argentina.gob.ar/redsube/simulador ( y que la calculadora funcione)

  @sube @todos
  Scenario: página red sube
    Given Verificar que la página redsube tenga status 200
    When Verificar que exista el acceso al formulario Registrá tu tarjeta
    Then Verificar que el formulario tenga los campos y el botón enviar
    Then Verificar el link Ingresá al simulador
    Then Verificar que la que la calculadora funcione

  #    cucumber -t @sube -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/sube/sube.html