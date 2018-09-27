Feature: Compartir en Rdes Sociales
  En este caso de prueba se verificara que los botones compartir en redes sociales en páginas con distinto tipo de contenido esten funcionando.
  La prueba consiste en probar que el href o url del ícono contenga la palabra buscada , queel estatus del botón sea (200),
  que se este compartiendo el mismo texto del titulo y la descripcion y que la foto coincida con la noticia.
  (en cada ícono de compartir ya sea facebook, twitter o otro igualmente)

  Se verificaran los siguientes tipos de contenido: Noticia, Persona Buscada, Página, Página de libro, subasta, webform, Área

  @compartir  @compartir_noticia @todos
  Scenario: Noticia (https://www.argentina.gob.ar/node/100829)
    Given ingresar al nodo 100829 El CINAR
    Then Verificar facebook href para nodo 100829
    Then Verificar facebook status de nodo 100829
    Then Verificar facebook Texto enviado de nodo 100829
    Then Verificar facebook Imagen enviada de nodo 100829

    Then Verificar twitter href para nodo 100829
    Then Verificar twitter status de nodo 100829
    Then Verificar twitter Texto enviado de nodo 100829
    Then Verificar twitter Imagen enviada de nodo 100829

    Then Verificar google href para nodo 100829
    Then Verificar google status de nodo 100829
    Then Verificar google Texto enviado de nodo 100829
    Then Verificar google Imagen enviada de nodo 100829

  @compartir  @compartir_persona_buscada @todos
  Scenario:  Persona Buscada (https://www.argentina.gob.ar/node/100161)
    Given ingresar al nodo 100161 Horacio Manuel Mella
    Then Verificar facebook href para nodo 100161
    Then Verificar facebook status de nodo 100161
    Then Verificar facebook Texto enviado de nodo 100161
    Then Verificar facebook Imagen enviada de nodo 100161

    Then Verificar twitter href para nodo 100161
    Then Verificar twitter status de nodo 100161
    Then Verificar twitter Texto enviado de nodo 100161
    Then Verificar twitter Imagen enviada de nodo 100161

    Then Verificar google href para nodo 100161
    Then Verificar google status de nodo 100161
    Then Verificar google Texto enviado de nodo 100161
    Then Verificar google Imagen enviada de nodo 100161

  @compartir  @compartir_pagina @todos
  Scenario:  Página (https://www.argentina.gob.ar/node/9341)
    Given ingresar al nodo 9341 Conocé los bancos
    Then Verificar facebook href para nodo 9341
    Then Verificar facebook status de nodo 9341
    Then Verificar facebook Texto enviado de nodo 9341
    Then Verificar facebook Imagen enviada de nodo 9341

    Then Verificar twitter href para nodo 9341
    Then Verificar twitter status de nodo 9341
    Then Verificar twitter Texto enviado de nodo 9341
    Then Verificar twitter Imagen enviada de nodo 9341

    Then Verificar google href para nodo 9341
    Then Verificar google status de nodo 9341
    Then Verificar google Texto enviado de nodo 9341
    Then Verificar google Imagen enviada de nodo 9341

  @compartir   @compartir_pagina_libro @todos
  Scenario: Página de libro (https://www.argentina.gob.ar/node/100851)
    Given ingresar al nodo 100851 Capacitación
    Then Verificar facebook href para nodo 100851
    Then Verificar facebook status de nodo 100851
    Then Verificar facebook Texto enviado de nodo 100851
    Then Verificar facebook Imagen enviada de nodo 100851

    Then Verificar twitter href para nodo 100851
    Then Verificar twitter status de nodo 100851
    Then Verificar twitter Texto enviado de nodo 100851
    Then Verificar twitter Imagen enviada de nodo 100851

    Then Verificar google href para nodo 100851
    Then Verificar google status de nodo 100851
    Then Verificar google Texto enviado de nodo 100851
    Then Verificar google Imagen enviada de nodo 100851

  @compartir  @compartir_servicio @todos
  Scenario: Servicio (https://www.argentina.gob.ar/node/37227)
    Given ingresar al nodo 37227 Registro para usos
    Then Verificar facebook href para nodo 37227
    Then Verificar facebook status de nodo 37227
    Then Verificar facebook Texto enviado de nodo 37227
    Then Verificar facebook Imagen enviada de nodo 37227

    Then Verificar twitter href para nodo 37227
    Then Verificar twitter status de nodo 37227
    Then Verificar twitter Texto enviado de nodo 37227
    Then Verificar twitter Imagen enviada de nodo 37227

    Then Verificar google href para nodo 37227
    Then Verificar google status de nodo 37227
    Then Verificar google Texto enviado de nodo 37227
    Then Verificar google Imagen enviada de nodo 37227

  @compartir   @compartir_subasta @todos
  Scenario: Subasta (https://www.argentina.gob.ar/node/37905)
    Given ingresar al nodo 37905 Soldado de la Indep
    Then Verificar facebook href para nodo 37905
    Then Verificar facebook status de nodo 37905
    Then Verificar facebook Texto enviado de nodo 37905
    Then Verificar facebook Imagen enviada de nodo 37905

    Then Verificar twitter href para nodo 37905
    Then Verificar twitter status de nodo 37905
    Then Verificar twitter Texto enviado de nodo 37905
    Then Verificar twitter Imagen enviada de nodo 37905

    Then Verificar google href para nodo 37905
    Then Verificar google status de nodo 37905
    Then Verificar google Texto enviado de nodo 37905
    Then Verificar google Imagen enviada de nodo 37905

  @compartir   @compartir_webform @todos
  Scenario:  Webform (https://www.argentina.gob.ar/node/100803)
    Given ingresar al nodo 100803 Comisión de igualdad
    Then Verificar facebook href para nodo 100803
    Then Verificar facebook status de nodo 100803
    Then Verificar facebook Texto enviado de nodo 100803
    Then Verificar facebook Imagen enviada de nodo 100803

    Then Verificar twitter href para nodo 100803
    Then Verificar twitter status de nodo 100803
    Then Verificar twitter Texto enviado de nodo 100803
    Then Verificar twitter Imagen enviada de nodo 100803

    Then Verificar google href para nodo 100803
    Then Verificar google status de nodo 100803
    Then Verificar google Texto enviado de nodo 100803
    Then Verificar google Imagen enviada de nodo 100803

  @compartir  @compartir_area @todos
  Scenario:  Área (https://www.argentina.gob.ar/node/3267)
    Given ingresar al nodo 3267 Ministerio de Producción
    Then Verificar facebook href para nodo 3267
    Then Verificar facebook status de nodo 3267
    Then Verificar facebook Texto enviado de nodo 3267
    Then Verificar facebook Imagen enviada de nodo 3267

    Then Verificar twitter href para nodo 3267
    Then Verificar twitter status de nodo 3267
    Then Verificar twitter Texto enviado de nodo 3267
    Then Verificar twitter Imagen enviada de nodo 3267

    Then Verificar instagram href para nodo 3267
    Then Verificar instagram status de nodo 3267
    Then Verificar instagram Texto enviado de nodo 3267
    Then Verificar instagram Imagen enviada de nodo 3267

    Then Verificar youtube href para nodo 3267
    Then Verificar youtube status de nodo 3267
    Then Verificar youtube Texto enviado de nodo 3267
    Then Verificar youtube Imagen enviada de nodo 3267

#    cucumber -t @compartir -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/compartir/compartir.html