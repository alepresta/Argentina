Feature: recepcionar turnos
  En este caso de prueba se verificara que se puede recepcionar un turno
  Se genera turno en https://qa-turnos.argentina.gob.ar/turnos/seleccionTurno/62 para
  (el usuario Aaron Brian Leonel	Cardozo Campos	)
  Se ingresa a la url: https://qa-usuarios-turnos.argentina.gob.ar como agente y se recepciona
  (el usuario Aaron Brian Leonel	Cardozo Campos	)
  Se ingresa a la url: https://qa-usuarios-turnos.argentina.gob.ar como agente y se atiende
  (el usuario Aaron Brian Leonel	Cardozo Campos	)

  @recepcionar_turnos
  Scenario: recepcionar turnos
    Then Generar un turno a Cardozo Campos
    Then Recepcionar a Cardozo Campos
    Then Atender el turno de Cardozo Campos

#    cucumber -t @recepcionar_turnos -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/turnos_recepcionar/turnos_recepcionar.html