Feature: Pagina principal
  Este caso de prueba consiste en la verificacion de la home de Argentina.gob.ar www.argentina.gob.ar
  Se verificara el funcionamiento del buscador tanto de la pagina principal como en cualquier otra pagina que no sea la principal
  Se verificara que todos los links de la página principal funcionen

  @menu  @home @todos
  Scenario: Ingresar a la página principal
    Given Ingresar a la página principal

  @menu  @home @todos
  Scenario: Buscar en la página principal
    Then buscar la palabra: anses
    Then buscar la palabra: dominio
    Then buscar la palabra: tramite de cuil
    Then buscar la palabra: cuit hermano
    Then buscar la palabra: SALUD
    Then buscar la palabra: SALÚD
    Then buscar la palabra: jubilacion
    Then buscar la palabra: trámite de médula ósea
    Then buscar desde argentina.gob.ar finanzas
    Then buscar desde argentina.gob.ar vuce novedades
    Then buscar desde argentina.gob.ar anmat
    Then buscar desde argentina.gob.ar salud
    Then buscar desde argentina.gob.ar hacienda
    Then buscar desde argentina.gob.ar politicassociales
    Then buscar desde argentina.gob.ar transporte

  @menu  @home @todos
  Scenario:  botón Mi Argentina
    Then verificar que el botón Mi Argentina redirija correctamente

  @menu  @home @todos
  Scenario: Verificar los links del panel-body redirijan al sitio esperado
    Then link - Si tenés que hacer un trámite, podés sacar turno en línea y ganar tiempo.
    Then link - Donar órganos
    Then link - RED SUBE
    Then link - Mi Argentina

  @menu  @home @todos
  Scenario: Verificar los links de trámites y servicios se redirijan correctamante
    Then link - Identidad
    Then link - Trabajar
    Then link - Cuidar la salud
    Then link - Estudiar
    Then link - Emprender, innovar, crecer
    Then link - Adultos mayores
    Then link - Personas con discapacidad
    Then link - Argentinos en el mundo
    Then link - Extranjeros en Argentina
    Then link - Cultura y tiempo libre
    Then link - Pareja y familia
    Then link - Violencia y abuso
    Then link - Emergencias
    Then link - Acceder a una vivienda
    Then link - Tránsito y automotor
    Then link - Consumidores
    Then link - Transparencia

  @menu  @home @todos
  Scenario: Verificar que los link de la sección Más consultados
    Then Se verificaran 8 links y textos

  @menu  @home @todos
  Scenario: Verificar los links del footer
    Then link - Creative Commons Reconocimiento
    Then link - QUERÉS HACERNOS UNA SUGERENCIA
    Then link - Trámites y servicios
    Then link - Turnos
    Then link - Organismos del Estado
    Then link - Mapa del Estado
    Then link - Acerca de este sitio
    Then link - Términos y condiciones
    Then link - Ayuda

#    cucumber -t @home -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/home/home.html