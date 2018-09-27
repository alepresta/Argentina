Feature: Turno respuesta
  Se ingresara a https://www.argentina.gob.ar/turnos

  verificara que se puede completar provincia localidad la información para generar un turno
  que el sistema funcione
  que el turno corresponda al tipo de tramite

  @turnos @todos
  Scenario: Turno respuesta
    Then verificar que el sistema funcione

    Then turno número 1-uno verificar organismo-trámite
    Then turno número uno verificar el formulario

    Then turno número 2-dos verificar organismo-trámite
    Then turno número dos verificar el formulario

    Then turno número 3-tres verificar organismo-trámite
    Then turno número tres verificar el formulario

#    cucumber -t @turnos -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/turnos/turnos.html