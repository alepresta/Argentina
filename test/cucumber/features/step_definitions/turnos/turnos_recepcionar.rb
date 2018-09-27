Then /^Generar un turno a Cardozo Campos$/ do
  pagina = "https://qa-turnos.argentina.gob.ar/turnos/seleccionTurno/62"
  go(pagina)
  provincia = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[1]/select')
  select_click(provincia,"Capital Federal")
  localidad = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[2]/select')
  select_click(localidad,"San Nicolás")
  capturar(:id,'puntoAtencion_0').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-puntos-atencion/div/div/button').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-dias-disponibles-turno/div/div/button').click
  # horarios inicio
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[1]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[2]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[3]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[4]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[5]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[6]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[7]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[8]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[9]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[10]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[11]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[12]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[13]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[14]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[15]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[16]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[17]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[18]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[19]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[3]/button[1]').click
  esperar(1)
  cuil = "27322041328"
  cuil = "20149435477"
  cuil = "20202013989"
  cuil = "20924174081"
  cuil = "20301178302"
  cuil = "20202843264"
  nombre = "Aaron Brian Leonel"
  apellido = "Cardozo Campos"
  email = "eaarached+036@gmail.com"
  capturar(:id,'cuil').send_keys cuil
  capturar(:id,'nombre').send_keys nombre
  capturar(:id,'apellido').send_keys apellido
  capturar(:id,'email').send_keys email
  capturar(:xpath,'/html/body/app-root/app-datos-tramite/div[2]/div/section/div/div/form/div[2]/div/button').click
  codigo_reserva = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[1]/p').text
  fecha = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[2]/p').text
  horario = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[3]/p').text
  tramite = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[4]/p').text
  punto_atencion1 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[1]').text
  punto_atencion2 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[2]').text
  puts " "
  puts "-----------------------------------------------------------------------------------------------------------".yellow
  puts "El usuario: #{nombre} con CUIL:#{cuil}"
  puts "-----------------------------------------------------------------------------------------------------------".yellow
  puts "Saco turno: ".bold + "#{fecha} , #{horario} ".light_blue
  puts "Código de reserva: ".bold + "#{codigo_reserva} ".light_blue
  puts "Trámite: ".bold + "#{tramite}".light_blue
  puts "Punto de atención: ".bold + "#{punto_atencion1} , #{punto_atencion2}".light_blue
  puts " "
  puts "TURNO RESERVADO ......................................[PASSED]".blue
end

Then /^Recepcionar a Cardozo Campos$/ do
  go("https://qa-usuarios-turnos.argentina.gob.ar")
  esperar(1)
  #captura_de_pantalla("qa-usuarios-turnos")
  usuario = "sntagente@yopmail.com"
  password = "QAsnt2018"
  asd = capturar(:id,'usuario')
  esperar(1)
  asd.send_keys usuario
  asd.clear()
  asd.send_keys usuario
  cap = capturar(:id,'password')
  cap.send_keys password
  esperar(1)
  cap.clear()
  cap.send_keys password
  bot = capturar(:class,'btn-success')
  bot.click
  #############
  titulo_seccion_inicial = "esta"
  titulo_inicial = capturar(:class,'titulo-seccion').text
  if titulo_inicial.include? titulo_seccion_inicial
    salir_de_ventanilla = capturar(:xpath,'/html/body/app-root/main/div/app-turnos-cola/h1/button')
    salir_de_ventanilla.click
  end
  recepcion = capturar(:xpath,'/html/body/app-root/main/div/app-ventanilla/div/div/div/div[1]/div')
  recepcion.click
  esperar(3)
  cuil = "27322041328"
  cuil = "20149435477"
  cuil = "20202013989"
  cuil = "20924174081"
  cuil = "20301178302"
  cuil = "20202843264"
  nombre = "Aaron Brian Leonel"
  apellido = "Cardozo Campos"
  email = "eaarached+036@gmail.com"

  buscar = capturar(:id,'codigo')
  buscar.send_keys cuil
  boton_buscar = capturar(:xpath, '/html/body/app-root/main/div/app-turnos/div/div[2]/app-busqueda-turnos/div/form/button')
  boton_buscar.click
  boton_recepcionar = capturar(:xpath,'/html/body/app-root/main/div/app-ver-turno/app-edicion-turno-form/div/form/div/div[2]/div[1]/button[1]')
  boton_recepcionar.click

  guardar = capturar(:xpath,'/html/body/app-root/main/div/app-ver-turno/app-edicion-turno-form/div/form/div/div[2]/div[2]/button[2]')
  guardar.click

  volver = capturar(:xpath, '/html/body/app-root/main/div/app-ver-turno/app-edicion-turno-form/div/form/div/div[2]/div[2]/button[1]')
  volver.click
  esperar(1)
  salir_de_recepcion = capturar(:xpath,'/html/body/app-root/main/div/app-turnos/h1/button')
  salir_de_recepcion.click
  puts "TURNO RESEPCIONADO: #{cuil} #{nombre} #{apellido}.............[PASSED]".blue
end

Then /^Atender el turno de Cardozo Campos$/ do
  go("https://qa-usuarios-turnos.argentina.gob.ar")
  esperar(1)
  #captura_de_pantalla("qa-usuarios-turnos")
  usuario = "sntagente@yopmail.com"
  password = "QAsnt2018"
  asd = capturar(:id,'usuario')
  esperar(1)
  asd.send_keys usuario
  asd.clear()
  asd.send_keys usuario
  cap = capturar(:id,'password')
  cap.send_keys password
  esperar(1)
  cap.clear()
  cap.send_keys password
  bot = capturar(:class,'btn-success')
  bot.click
  #############
  titulo_seccion_inicial = "esta"
  titulo_inicial = capturar(:class,'titulo-seccion').text
  if titulo_inicial.include? titulo_seccion_inicial
    salir_de_ventanilla = capturar(:xpath,'/html/body/app-root/main/div/app-turnos-cola/h1/button')
    salir_de_ventanilla.click
  end
  box2 = capturar(:xpath,'/html/body/app-root/main/div/app-ventanilla/div/div/div/div[2]/div[1]/div/h1')
  box2.click
  esperar(3)
  llamar_siguiente_numero = capturar(:class, 'btn-primary')
  llamar_siguiente_numero.click
  esperar(3)
  titulo = capturar(:class,'titulo-seccion').text
  titulo_que_deberia_estar = "ventanilla"
  if titulo.include? titulo_que_deberia_estar
    #puts "NO HAY TURNO"
    puts "NO HAY TURNOS:".bold
  else
    #puts "HAY TURNO"
    wixle = titulo.include? titulo_que_deberia_estar
    while wixle == false
      terminado = capturar(:xpath, '/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[2]/div[1]/button[3]')
      terminado.click
      terminado_completo = capturar(:xpath, '/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[2]/div[1]/div[2]/button[1]')
      terminado_completo.click
      nombre = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[1]/div[2]/div/div[1]/p').text
      apellido = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[1]/div[2]/div/div[2]/p').text
      cuil = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[1]/div[2]/div/div[3]/p').text
      puts "TURNOS ATENDIDOS PARA VACIAR: #{nombre.yellow} #{apellido.yellow}  \t  CUIL:#{cuil.yellow}".bold
      guardar = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[2]/div[2]/button')
      guardar.click
      esperar(1)
      llamar_siguiente_numero = capturar(:class, 'btn-primary')
      llamar_siguiente_numero.click
      esperar(3)
      titulo1 = capturar(:class,'titulo-seccion').text
      titulo1_que_deberia_estar = "ventanilla"
      wixle = titulo1.include? titulo1_que_deberia_estar
    end
  end
  esperar(1)
  salir_de_ventanilla = capturar(:xpath,'/html/body/app-root/main/div/app-turnos-cola/h1/button')
  salir_de_ventanilla.click
  esperar(1)
end