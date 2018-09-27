Given /^Verificar que la página redsube tenga status 200$/ do
  sube
  href_sube = "https://www.argentina.gob.ar/redsube"
  status_link(200,href_sube)
end

When /^Verificar que exista el acceso al formulario Registrá tu tarjeta$/ do
  sube
  formulario_registra = capturar(:link,'tarjeta')
  href_sube = formulario_registra.attribute("href")
  puts href_sube
  status_link(200,href_sube)
end

Then /^Verificar que el formulario tenga los campos y el botón enviar$/ do
  sube_registro
  breadcrumb_encontrar = "Argentina SUBE Registrá tu tarjeta SUBE"
  breadcrumb_titulo = capturar(:class,'row').text
  esIgual(breadcrumb_encontrar, breadcrumb_titulo, "Breadcrumb: ")
  boton_continuar = capturar(:class,'btn-success')
  boton_esperar_encontrado = boton_continuar.text
  boton_continuar_esperado = "CONTINUAR"
  esIgual(boton_continuar_esperado, boton_esperar_encontrado , "CONTINUAR: ")
  puts boton_continuar.click
end

Then /^Verificar el link Ingresá al simulador$/ do
  sube
  calculadora = capturar(:css,'p.m-b-0:nth-child(3) > a:nth-child(1)')
  link_calculadora = calculadora.attribute("href")
  calculadora.click
  puts link_calculadora
  status_link(200,link_calculadora)
end

Then /^Verificar que la que la calculadora funcione$/ do
  sube_calculadora
  transporte = capturar(:id, 'ride-transport')
  select_click(transporte,"Colectivo")
  capturar(:id,'ride-price').clear
  capturar(:id,'ride-price').send_keys 10
  capturar(:id,'js-add-trip').click
  select_click(transporte,"Tren")
  capturar(:id,'ride-price').clear
  capturar(:id,'ride-price').send_keys 10
  capturar(:id,'js-add-trip').click
  select_click(transporte,"Subte")
  capturar(:id,'ride-price').clear
  capturar(:id,'ride-price').send_keys 10
  capturar(:id,'js-add-trip').click
  capturar(:id,'ride-times').clear
  capturar(:id,'ride-times').send_keys 20
  importe = capturar(:class, 'text-success').text
  importe_esperado = "$2000,00"
  esIgual(importe_esperado, importe , "CALCULADORA: ")
end
