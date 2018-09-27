Then /^se verifica el formulario 01 consultar estado pasaporte$/ do
  pagina = "https://www.argentina.gob.ar/consultar-estado-pasaporte"
  go(pagina)
  lista = '11021983'
  capturar(:id,'edit-dni').send_keys lista
  capturar(:xpath, '/html/body/main/div[2]/div/section/article/div/div[7]/div/form/div/div[1]/div/fieldset[1]/div/div[3]/div/div/div/label[2]').click
  capturar(:id, 'edit-submit').click
  capturar(:id,'otraConsulta')
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 02 consultar donde tenes que radicar un vehiculo automotor$/ do
  pagina = "https://www.argentina.gob.ar/consultar-donde-tenes-que-radicar-un-vehiculo-automotor"
  altura = 1000
  go(pagina)
  capturar(:id, 'edit-tipovehiculo-A').click
  capturar(:name, 'siguiente').click
  select = capturar(:xpath, '//*[@id="edit-idprovincia"]')
  select_click(select,"CAPITAL FEDERAL")
  capturar(:name, 'siguiente').click
  select = capturar(:xpath, '//*[@id="edit-iddepartamento"]')
  select_click(select,"CAPITAL FEDERAL")
  capturar(:name, 'siguiente').click
  select = capturar(:xpath, '//*[@id="edit-idlocalidad"]')
  select_click(select,"CAPITAL FEDERAL")
  capturar(:name, 'siguiente').click
  select = capturar(:xpath, '//*[@id="edit-idcalle"]')
  select_click(select,"RIVADAVIA AV.")
  capturar(:name, 'siguiente').click
  capturar(:xpath, '//*[@id="edit-alturaexacta"]').send_keys altura
  capturar(:name, 'siguiente').click
  capturar(:id, 'edit-consultar').click
  capturar(:class, 'panel-body')
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 03 consultar donde esta radicado vehiculo automotor$/ do
  pagina = "https://www.argentina.gob.ar/consultar-donde-esta-radicado-vehiculo-automotor"
  go(pagina)
  patente = 'lrm345'
  capturar(:id,'edit-patente').send_keys patente
  capturar(:id,'edit-envio-formulario').click
  capturar(:id , 'consulta-radicacion-dominio')
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 04 consultar donde radicar un automotor$/ do
  pagina = "https://www.argentina.gob.ar/consultar-donde-radicar-un-automotor"
  altura = 1000
  go(pagina)
  capturar(:id, 'edit-tipovehiculo-A').click
  capturar(:name, 'siguiente').click
  select = capturar(:xpath, '//*[@id="edit-idprovincia"]')
  select_click(select,"CAPITAL FEDERAL")
  capturar(:name, 'siguiente').click
  select = capturar(:xpath, '//*[@id="edit-iddepartamento"]')
  select_click(select,"CAPITAL FEDERAL")
  capturar(:name, 'siguiente').click
  select = capturar(:xpath, '//*[@id="edit-idlocalidad"]')
  select_click(select,"CAPITAL FEDERAL")
  capturar(:name, 'siguiente').click
  select = capturar(:xpath, '//*[@id="edit-idcalle"]')
  select_click(select,"RIVADAVIA AV.")
  capturar(:name, 'siguiente').click
  capturar(:xpath, '//*[@id="edit-alturaexacta"]').send_keys altura
  capturar(:name, 'siguiente').click
  capturar(:id, 'edit-consultar').click
  capturar(:class, 'panel-body')
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 05 defensadelconsumidor formulario$/ do
  pagina = "https://www.argentina.gob.ar/defensadelconsumidor/formulario"
  direccion = "Av. Pres. Julio A. Roca 738, C1067 ABP, Buenos Aires"
  nombre = "ANTONELLA MELISA"
  apellido = "LISTA"
  documento= "27371491657"
  codigopostal = "C1067 ABP"
  cumple = "01/11/1988"
  mail = "eaarached+001@gmail.com"
  prefijo = "011"
  numero = "2123455478"
  texto = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,"
  proveedor = "SUPERMERCADOS MAYORISTAS MAKRO SA"
  cuil_prov = "30589621499"
  direccion_prov = "Av Calchaquí 500, Quilmes, Buenos Aires"
  # miargentina_login
  go(pagina)
  capturar(:xpath,'/html/body/main/div[2]/div/section/article/div/div[7]/div[7]/div/div/form/div[1]/fieldset/div/div[5]/div[2]/div/div/label[1]').click
  capturar(:id,'edit-personales-nombre').send_keys nombre
  capturar(:id,'edit-personales-apellido').send_keys apellido
  capturar(:id,'edit-personales-doc').send_keys documento
  capturar(:id,'edit-personales-fechanacimiento').send_keys cumple
  capturar(:id,'edit-personales-domicilio').send_keys direccion
  provincia = capturar(:id,'edit-personales-provincia')
  # provincia
  select_click(provincia,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provincia,"CATAMARCA")
  select_click(provincia,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provincia,"BUENOS AIRES")
=begin
  esperar(10)
  localidad_personales = capturar(:id,'edit-personales-localidad--3')
  select_click(localidad_personales,"11 DE SEPTIEMBRE, Tres de Febrero")
  select_click(localidad_personales,"12 DE OCTUBRE, 9 de Julio")
  select_click(localidad_personales,"16 DE JULIO, Azul")
  select_click(localidad_personales,"17 DE AGOSTO, Puán")
  select_click(localidad_personales,"ABASTO, La Plata")
  select_click(localidad_personales,"ACASSUSO, San Isidro")
  select_click(localidad_personales,"ALDO BONZI, La Matanza")
  select_click(localidad_personales,"ARENAZA, Lincoln")
  select_click(localidad_personales,"ARROYO VENADO, Guaminí")
  select_click(localidad_personales,"AZUL, Azul")
  select_click(localidad_personales,"GLEW, Almirante Brown")
  select_click(localidad_personales,"LA INVENCIBLE, Salto")
  select_click(localidad_personales,"LONGCHAMPS, Almirante Brown")
  select_click(localidad_personales,"PONTEVEDRA, Merlo")
  select_click(localidad_personales,"RAFAEL CASTILLO, La Matanza")
  select_click(localidad_personales,"QUILMES, Quilmes")
=end
  capturar(:id,'edit-personales-cp').send_keys codigopostal
  capturar(:id,'edit-contacto-email').send_keys mail
  capturar(:id,'edit-contacto-telefono-prefijo').send_keys prefijo
  capturar(:id,'edit-contacto-telefono').send_keys numero
  capturar(:id,'edit-reclamo-motivo').send_keys texto
  capturar(:id,'edit-reclamo-solicito-cambio-de-producto').click
  capturar(:id,'edit-reclamo-solicito-bonificacin-en-el-abono').click
  capturar(:id,'edit-reclamo-solicito-devolucin-del-dinero').click
  provinciar = capturar(:id,'edit-reclamo-provincia')
  select_click(provinciar,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provinciar,"CATAMARCA")
  select_click(provinciar,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provinciar,"BUENOS AIRES")
=begin
  esperar(10)
  localidad_reclamo = capturar(:id,'edit-reclamo-localidad--5')
  select_click(localidad_reclamo,"11 DE SEPTIEMBRE, Tres de Febrero")
  select_click(localidad_reclamo,"12 DE OCTUBRE, 9 de Julio")
  select_click(localidad_reclamo,"16 DE JULIO, Azul")
  select_click(localidad_reclamo,"17 DE AGOSTO, Puán")
  select_click(localidad_reclamo,"ABASTO, La Plata")
  select_click(localidad_reclamo,"ACASSUSO, San Isidro")
  select_click(localidad_reclamo,"ALDO BONZI, La Matanza")
  select_click(localidad_reclamo,"ARENAZA, Lincoln")
  select_click(localidad_reclamo,"ARROYO VENADO, Guaminí")
  select_click(localidad_reclamo,"AZUL, Azul")
  select_click(localidad_reclamo,"GLEW, Almirante Brown")
  select_click(localidad_reclamo,"LA INVENCIBLE, Salto")
  select_click(localidad_reclamo,"LONGCHAMPS, Almirante Brown")
  select_click(localidad_reclamo,"PONTEVEDRA, Merlo")
  select_click(localidad_reclamo,"RAFAEL CASTILLO, La Matanza")
  select_click(localidad_reclamo,"QUILMES, Quilmes")
=end
  # uso
  provinciad = capturar(:id,'edit-uso-provincia')
  select_click(provinciad,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provinciad,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provinciad,"CATAMARCA")
  select_click(provinciad,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provinciad,"BUENOS AIRES")
=begin
  esperar(10)
  localidad_uso = capturar(:id,'edit-uso-localidad--4')
  select_click(localidad_uso,"11 DE SEPTIEMBRE, Tres de Febrero")
  select_click(localidad_uso,"12 DE OCTUBRE, 9 de Julio")
  select_click(localidad_uso,"16 DE JULIO, Azul")
  select_click(localidad_uso,"17 DE AGOSTO, Puán")
  select_click(localidad_uso,"ABASTO, La Plata")
  select_click(localidad_uso,"ACASSUSO, San Isidro")
  select_click(localidad_uso,"ALDO BONZI, La Matanza")
  select_click(localidad_uso,"ARENAZA, Lincoln")
  select_click(localidad_uso,"ARROYO VENADO, Guaminí")
  select_click(localidad_uso,"AZUL, Azul")
  select_click(localidad_uso,"GLEW, Almirante Brown")
  select_click(localidad_uso,"LA INVENCIBLE, Salto")
  select_click(localidad_uso,"LONGCHAMPS, Almirante Brown")
  select_click(localidad_uso,"PONTEVEDRA, Merlo")
  select_click(localidad_uso,"RAFAEL CASTILLO, La Matanza")
  select_click(localidad_uso,"QUILMES, Quilmes")
=end
  capturar(:id,'edit-proveedor1-nombre').send_keys proveedor
  capturar(:id,'edit-proveedor1-cuit').send_keys cuil_prov
  capturar(:id,'edit-proveedor1-direccion').send_keys direccion_prov
  # proveedor
  provinciadprov = capturar(:id,'edit-proveedor1-provincia')
  select_click(provinciadprov,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provinciadprov,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provinciadprov,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provinciadprov,"CATAMARCA")
  select_click(provinciadprov,"CIUDAD AUTÓNOMA DE BUENOS AIRES")
  select_click(provinciadprov,"BUENOS AIRES")
=begin
  esperar(10)
  localidad_proveedor1 = capturar(:id,'edit-proveedor1-localidad--4')
  select_click(localidad_proveedor1,"11 DE SEPTIEMBRE, Tres de Febrero")
  select_click(localidad_proveedor1,"12 DE OCTUBRE, 9 de Julio")
  select_click(localidad_proveedor1,"16 DE JULIO, Azul")
  select_click(localidad_proveedor1,"17 DE AGOSTO, Puán")
  select_click(localidad_proveedor1,"ABASTO, La Plata")
  select_click(localidad_proveedor1,"ACASSUSO, San Isidro")
  select_click(localidad_proveedor1,"ALDO BONZI, La Matanza")
  select_click(localidad_proveedor1,"ARENAZA, Lincoln")
  select_click(localidad_proveedor1,"ARROYO VENADO, Guaminí")
  select_click(localidad_proveedor1,"AZUL, Azul")
  select_click(localidad_proveedor1,"GLEW, Almirante Brown")
  select_click(localidad_proveedor1,"LA INVENCIBLE, Salto")
  select_click(localidad_proveedor1,"LONGCHAMPS, Almirante Brown")
  select_click(localidad_proveedor1,"PONTEVEDRA, Merlo")
  select_click(localidad_proveedor1,"RAFAEL CASTILLO, La Matanza")
  select_click(localidad_proveedor1,"QUILMES, Quilmes")
=end
  xx = captura_elemento(:id,'edit-submit')
  xx.click
  # puts capturar(:xpath,'/html/body/main/div[2]/div/section/article/div/div[7]/div[7]/div/div/h3').text
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 06 hacer el seguimiento de reclamo ante defensa del consumidor$/ do
  pagina = "https://www.argentina.gob.ar/hacer-el-seguimiento-de-reclamo-ante-defensa-del-consumidor"
  go(pagina)
  documento= "11026230"
  reclamo = "9479"
  capturar(:id,'edit-doc').send_keys documento
  capturar(:id,'edit-numero').send_keys reclamo
  capturar(:id,'edit-submit').click
  capturar(:xpath,'/html/body/main/div[2]/div/section/article/div/div[3]/div/div[2]/div')
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 07 consultar renovacion dni$/ do
  pagina = "https://www.argentina.gob.ar/consultar-renovacion-dni"
  go(pagina)
  documento= "11026230"
  capturar(:id,'edit-dni').send_keys documento
  capturar(:id,'edit-submit').click
  capturar(:xpath,'//*[@id="edit-submit"]').click
  capturar(:id,'otraConsulta')
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 08 consulta el estado de tramite del dni$/ do
  pagina = "https://www.argentina.gob.ar/consultar-renovacion-dni"
  go(pagina)
  documento= "11026230"
  capturar(:id,'edit-dni').send_keys documento
  capturar(:id,'edit-submit').click
  capturar(:xpath,'//*[@id="edit-submit"]').click
  capturar(:id,'otraConsulta')
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 09 primerencuentroetica formularioencuentro$/ do
  pagina = "https://www.argentina.gob.ar/primerencuentroetica/formularioencuentro"
  go(pagina)
  nombre = "ANTONELLA MELISA LISTA"
  mail = "eaarached+001@gmail.com"
  dni= "123456789"
  numero = "2123455478"
  institucion = "SUPERMERCADOS MAYORISTAS MAKRO SA"
  profesion = "ABOGADA"
  localidad = "Av Calchaquí 500, Quilmes, Buenos Aires"
  capturar(:id,'edit-argentinagobar-forms-render-field-text-1').send_keys nombre
  capturar(:id,'edit-argentinagobar-forms-render-field-text-2').send_keys mail
  capturar(:id,'edit-argentinagobar-forms-render-field-text-896').send_keys dni
  capturar(:id,'edit-argentinagobar-forms-render-field-text-9').send_keys numero
  capturar(:id,'edit-argentinagobar-forms-render-field-text-900').send_keys institucion
  capturar(:id,'edit-argentinagobar-forms-render-field-text-264').send_keys profesion
  capturar(:id,'edit-argentinagobar-forms-render-field-text-191').send_keys localidad
  capturar(:id,'edit-submit').click
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 10 expedientes$/ do
  pagina = "https://www.argentina.gob.ar/expedientes"
  go(pagina)
  anio = "2018"
  exp  = "39024270"
  apn  = "SECGEIP#MM"
  capturar(:id,'edit-anioexpediente').send_keys anio
  capturar(:id,'edit-numeroexpediente').send_keys exp
  capturar(:id,'edit-codigoreparticion').send_keys apn
  capturar(:id,'row-2').click
  capturar(:class,'panel-body')
  capturar(:id,'contenedor')
  puts "El formulario: #{pagina} ...[PASSED]"
end

Then /^se verifica el formulario 11 trabajoenred.argentina.gob.ar$/ do
  pagina = "https://trabajoenred.argentina.gob.ar/#/contacto"
  go(pagina)
  nombre = "ANTONELLA MELISA DUPONT"
  mail = "eaarached+001@gmail.com"
  cuil = "27371491657"
  telefono = "2123455478"
  comentario = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,"
  capturar(:id,'nombres').send_keys nombre
  capturar(:id,'mail').send_keys mail
  capturar(:id,'cuil').send_keys cuil
  capturar(:id,'telefono').send_keys telefono
  capturar(:id,'comentario').send_keys comentario
  capturar(:class,'btn-lg').click
  capturar(:xpath,'/html/body/div[1]/div/div/div/div[3]/button').click
  puts "El formulario: #{pagina} ...[PASSED]"
end

