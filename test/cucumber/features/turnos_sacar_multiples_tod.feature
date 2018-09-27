Feature: Sacar turnos multiples por Tod
  En este aso de prueba se ingresara a http://qa-filas.argentina.gob.ar para verificar que funcione la creacion de turnos desde el  TOD (Totem)
  Se eliminaran todos los turnos creados con anterioridad
  Se daran de alta 5 turnos desde el TOD (totem)
                            Clara Ines Cuchuflita          CUIL:20223568891
                            Ruben Ignacio Trifler          CUIL:20227568896
                            Carlos Hugo Merlodesago        CUIL:20327568893
                            Agustin Eduardo Garcia         CUIL:20384543856
                            Lucho Damián Caradelito        CUIL:27114543859
  Se atenderan los turnos creados desde el TOD

  @sacar_turno_multiple_tod
  Scenario: Sacar turnos multiples por Tod
    Then Vaciar atendiendo todos los turnos
    Then Sacar turnos por TOD
    Then Atender por ventanilla


      #    cucumber -t @sacar_turno_multiple_tod -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/turnos_sacar_multiples_tod/turnos_sacar_multiples_tod.html