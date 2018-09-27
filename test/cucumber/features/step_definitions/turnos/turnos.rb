  Then /^verificar que el sistema funcione$/ do
    browser_turnos_front
    captura_de_pantalla("turnos_argentina.gob.ar")
    puts "Estos son los 3 trámites a verificar\n=================================="
    @organismo_uno = captura_elemento(:xpath, '/html/body/main/div[2]/div/section/div/div[7]/div/div/div/table/tbody/tr[4]/td[1]').text
    @tramite_uno = captura_elemento(:xpath,'/html/body/main/div[2]/div/section/div/div[7]/div/div/div/table/tbody/tr[4]/td[2]/strong').text
    @boton_sacar_turno_uno_css = captura_elemento(:css, '.table > tbody:nth-child(2) > tr:nth-child(4) > td:nth-child(3) > a:nth-child(1)')
    @boton_sacar_turno_uno = @boton_sacar_turno_uno_css.attribute("href")
    link(@boton_sacar_turno_uno, @boton_sacar_turno_uno)
    @organismo_dos = captura_elemento(:xpath, '/html/body/main/div[2]/div/section/div/div[7]/div/div/div/table/tbody/tr[15]/td[1]').text
    @tramite_dos = captura_elemento(:xpath,'/html/body/main/div[2]/div/section/div/div[7]/div/div/div/table/tbody/tr[15]/td[2]/strong').text
    @boton_sacar_turno_dos_css = captura_elemento(:css, '.table > tbody:nth-child(2) > tr:nth-child(15) > td:nth-child(3) > a:nth-child(1)')
    @boton_sacar_turno_dos = @boton_sacar_turno_dos_css.attribute("href")
    link(@boton_sacar_turno_dos, @boton_sacar_turno_dos)
    @organismo_tres = captura_elemento(:xpath, '/html/body/main/div[2]/div/section/div/div[7]/div/div/div/table/tbody/tr[14]/td[1]').text
    @tramite_tres = captura_elemento(:xpath,'/html/body/main/div[2]/div/section/div/div[7]/div/div/div/table/tbody/tr[14]/td[2]/strong').text
    @boton_sacar_turno_tres_css = captura_elemento(:css, '.table > tbody:nth-child(2) > tr:nth-child(14) > td:nth-child(3) > a:nth-child(1)')
    @boton_sacar_turno_tres = @boton_sacar_turno_tres_css.attribute("href")
    link(@boton_sacar_turno_tres, @boton_sacar_turno_tres)
  end

  Then /^turno número 1-uno verificar organismo-trámite$/ do
    browser_turnos_front
    @browser.get @boton_sacar_turno_uno
    maximizar
    captura_de_pantalla("turnos_1")
    organismo = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[1]/app-jumbotron/div/section/div[2]/div/div/div/p').text
    tramite = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[1]/app-jumbotron/div/section/div[2]/div/div/div/h2').text
    puts @boton_sacar_turno_uno
    esIgual(@organismo_uno, organismo, "Organismo seleccionado:  #{@organismo_uno}\n Organismo   encontrado: #{organismo}")
    esIgual(@tramite_uno, tramite, "Trámite seleccionado: #{@tramite_uno}\n Trámite   encontrado: #{tramite}")
  end

  Then /^turno número uno verificar el formulario$/ do
    browser_turnos_front
    @browser.get @boton_sacar_turno_uno
    maximizar
    captura_de_pantalla("turnos_1")
    puts @boton_sacar_turno_uno
    provincia = captura_elemento(:name, 'provincia')
    select_click(provincia,"Capital Federal")
    puts "Ingreso texto al campo Selecciona tu provincia: #{provincia.text.gsub("Seleccione opción", "").gsub("\n", "").gsub(" ", "")} ...[PASSED]"
    captura_de_pantalla("turnos_1")
    localidad = captura_elemento(:name, 'localidad')
    select_click(localidad,"Belgrano")
    puts "Ingreso texto al campo Selecciona tu localidad mas cercana: #{localidad.text.gsub("Seleccione opción", "").gsub("\n", "").gsub(" ", "")} ...[PASSED]"
  end

  Then /^turno número 2-dos verificar organismo-trámite$/ do
    browser_turnos_front
    @browser.get @boton_sacar_turno_dos
    maximizar
    captura_de_pantalla("turnos_2")
    organismo = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[1]/app-jumbotron/div/section/div[2]/div/div/div/p').text
    tramite = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[1]/app-jumbotron/div/section/div[2]/div/div/div/h2').text
    puts @boton_sacar_turno_dos
    esIgual(@organismo_dos, organismo, "Organismo seleccionado:  #{@organismo_dos}\n Organismo   encontrado: #{organismo}")
    esIgual(@tramite_dos, tramite, "Trámite seleccionado: #{@tramite_dos}\n Trámite   encontrado: #{tramite}")
  end

  Then /^turno número dos verificar el formulario$/ do
    browser_turnos_front
    @browser.get @boton_sacar_turno_dos
    maximizar
    captura_de_pantalla("turnos_2")
    puts @boton_sacar_turno_dos
    provincia = captura_elemento(:name, 'provincia')
    select_click(provincia,"Capital Federal")
    puts "Ingreso texto al campo Selecciona tu provincia: #{provincia.text.gsub("Seleccione opción", "").gsub("\n", "").gsub(" ", "")} ...[PASSED]"
    captura_de_pantalla("turnos_2")
    localidad = captura_elemento(:name, 'localidad')
    select_click(localidad,"Belgrano")
    puts "Ingreso texto al campo Selecciona tu localidad mas cercana: #{localidad.text.gsub("Seleccione opción", "").gsub("\n", "").gsub(" ", "")} ...[PASSED]"
  end

  Then /^turno número 3-tres verificar organismo-trámite$/ do
    browser_turnos_front
    @browser.get @boton_sacar_turno_tres
    maximizar
    captura_de_pantalla("turnos_3")
    organismo = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[1]/app-jumbotron/div/section/div[2]/div/div/div/p').text
    tramite = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[1]/app-jumbotron/div/section/div[2]/div/div/div/h2').text
    puts @boton_sacar_turno_tres
    esIgual(@organismo_tres, organismo, "Organismo seleccionado:  #{@organismo_tres}\n Organismo   encontrado: #{organismo}")
    esIgual(@tramite_tres, tramite, "Trámite seleccionado: #{@tramite_tres}\n Trámite   encontrado: #{tramite}")
  end

  Then /^turno número tres verificar el formulario$/ do
    browser_turnos_front
    @browser.get @boton_sacar_turno_tres
    maximizar
    captura_de_pantalla("turnos_3")
    puts @boton_sacar_turno_tres
    provincia = captura_elemento(:name, 'provincia')
    select_click(provincia,"Capital Federal")
    puts "Ingreso texto al campo Selecciona tu provincia: #{provincia.text.gsub("Seleccione opción", "").gsub("\n", "").gsub(" ", "")} ...[PASSED]"
    captura_de_pantalla("turnos_3")
    localidad = captura_elemento(:name, 'localidad')
    select_click(localidad,"Belgrano")
    puts "Ingreso texto al campo Selecciona tu localidad mas cercana: #{localidad.text.gsub("Seleccione opción", "").gsub("\n", "").gsub(" ", "")} ...[PASSED]"
  end