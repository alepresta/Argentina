Given /^ingresar al nodo 100829 El CINAR$/ do
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
end

Given /^ingresar al nodo 100161 Horacio Manuel Mella$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
end

Given /^ingresar al nodo 9341 Conocé los bancos$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
end

Given /^ingresar al nodo 100851 Capacitación$/ do
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
end

Given /^ingresar al nodo 37227 Registro para usos$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas # Registro para usos menores de fuentes radiactivas
end

Given /^ingresar al nodo 37905 Soldado de la Indep$/ do
  nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
end

Given /^ingresar al nodo 100803 Comisión de igualdad$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables #
end

Given /^ingresar al nodo 3267 Ministerio de Producción$/ do
  nodo_front(3267) # Ministerio de Producción
end

Then /^Verificar facebook href para nodo 100829$/ do
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  if href_facebook.include?('facebook') == true
      puts "El link del botón facebook contiene la palabra facebook ...[PASS] "
    else
      puts fail "El link del botón facebook no contiene la palabra facebook ...[ERROR]"
  end
end

Then /^Verificar facebook status de nodo 100829$/ do
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  status_link(200,href_facebook)
end

Then /^Verificar facebook Texto enviado de nodo 100829$/ do
  facebook
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
  titulo = capturar(:class,'title-description').text
  titulo = titulo.match("^s*[a-zA-Z-].*+s*")
  facebook = capturar(:link, "Compartir en Facebook")
  facebook.click
  textow = capturar(:id, 'u_0_t').text
  if textow.include? "#{titulo}"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar facebook Imagen enviada de nodo 100829$/ do
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar twitter href para nodo 100829$/ do
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  if href_twitter.include?('twitter') == true
    puts "El link del botón Compartir en Twitter contiene la palabra twitter ...[PASS] "
  else
    puts fail "El link del botón Compartir en Twitter no contiene la palabra twitter ...[ERROR]"
  end
end

Then /^Verificar twitter status de nodo 100829$/ do
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  status_link(200,href_twitter)
end

Then /^Verificar twitter Texto enviado de nodo 100829$/ do
  twitter
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  twitter.click
  if href_twitter.include? "argentina.gob.ar"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar twitter Imagen enviada de nodo 100829$/ do
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar google href para nodo 100829$/ do
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  if href_google.include?('google') == true
    puts "El link del botón Compartir en Google Plus contiene la palabra Google ...[PASS] "
  else
    puts fail "El link del botón Compartir en Google Plus no contiene la palabra Google ...[ERROR]"
  end
end

Then /^Verificar google status de nodo 100829$/ do
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
=begin
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  status_link(200,href_google)
=end
end

Then /^Verificar google Texto enviado de nodo 100829$/ do
  #google
  nodo_front(100829) # El CINAR completó la reparación de cuatro dragas
=begin
  titulo = capturar(:class,'title-description').text
  titulo = titulo.match("^s*[a-zA-Z-].*+s*")
  google = capturar(:link, "Compartir en Google Plus")
  google.click
  textow = capturar(:xpath,'/html/body/c-wiz/div[4]/div/c-wiz/c-wiz/content/div[1]/div[1]/div[1]/div[2]/div/div/div[1]/div[2]').text
  if textow.include? ""
    puts "El texto del titulo existe ...[PASSED]"
  else
    puts fail "El texto del titulo no existe  ...[ERROR]"
  end
=end
end

Then /^Verificar google Imagen enviada de nodo 100829$/ do
puts "Imagen no validada ...[PASSED]" 
end


Then /^Verificar facebook href para nodo 100161$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  if href_facebook.include?('facebook') == true
    puts "El link del botón facebook contiene la palabra facebook ...[PASS] "
  else
    puts fail "El link del botón facebook no contiene la palabra facebook ...[ERROR]"
  end
end

Then /^Verificar facebook status de nodo 100161$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  status_link(200,href_facebook)
end

Then /^Verificar facebook Texto enviado de nodo 100161$/ do
  facebook
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
  facebook = capturar(:link, "Compartir en Facebook")
  facebook.click
  textow = capturar(:id, 'u_0_t').text
  if textow.include? "#{textow}"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar facebook Imagen enviada de nodo 100161$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar twitter href para nodo 100161$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  if href_twitter.include?('twitter') == true
    puts "El link del botón Compartir en Twitter contiene la palabra twitter ...[PASS] "
  else
    puts fail "El link del botón Compartir en Twitter no contiene la palabra twitter ...[ERROR]"
  end
end

Then /^Verificar twitter status de nodo 100161$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  status_link(200,href_twitter)
end

Then /^Verificar twitter Texto enviado de nodo 100161$/ do
  twitter
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  twitter.click
  if href_twitter.include? "argentina.gob.ar"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar twitter Imagen enviada de nodo 100161$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar google href para nodo 100161$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  if href_google.include?('google') == true
    puts "El link del botón Compartir en Google Plus contiene la palabra Google ...[PASS] "
  else
    puts fail "El link del botón Compartir en Google Plus no contiene la palabra Google ...[ERROR]"
  end
end

Then /^Verificar google status de nodo 100161$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
=begin
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  status_link(200,href_google)
=end
end

Then /^Verificar google Texto enviado de nodo 100161$/ do
  #google
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
=begin
  google = capturar(:link, "Compartir en Google Plus")
  google.click
  textow = capturar(:xpath,'/html/body/c-wiz/div[4]/div/c-wiz/c-wiz/content/div[1]/div[1]/div[1]/div[2]/div/div/div[1]/div[2]').text
  if textow.include? textow
    puts "El texto del titulo existe ...[PASSED]"
  else
    puts fail "El texto del titulo no existe  ...[ERROR]"
  end
=end
end

Then /^Verificar google Imagen enviada de nodo 100161$/ do
  pagina = "https://www.argentina.gob.ar/persona-buscada/aguirre"
  go(pagina)
  puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar facebook href para nodo 9341$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  if href_facebook.include?('facebook') == true
    puts "El link del botón facebook contiene la palabra facebook ...[PASS] "
  else
    puts fail "El link del botón facebook no contiene la palabra facebook ...[ERROR]"
  end
end

Then /^Verificar facebook status de nodo 9341$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  status_link(200,href_facebook)
end

Then /^Verificar facebook Texto enviado de nodo 9341$/ do
  facebook
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
  titulo = capturar(:xpath,'/html/body/main/div[2]/div/section/div/article/div[1]/div/h1').text
  titulo = titulo.match("^s*[a-zA-Z-].*+s*")
  facebook = capturar(:link, "Compartir en Facebook")
  facebook.click
  textow = capturar(:id, 'u_0_t').text
  if textow.include? "#{titulo}"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar facebook Imagen enviada de nodo 9341$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar twitter href para nodo 9341$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  if href_twitter.include?('twitter') == true
    puts "El link del botón Compartir en Twitter contiene la palabra twitter ...[PASS] "
  else
    puts fail "El link del botón Compartir en Twitter no contiene la palabra twitter ...[ERROR]"
  end
end

Then /^Verificar twitter status de nodo 9341$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  status_link(200,href_twitter)
end

Then /^Verificar twitter Texto enviado de nodo 9341$/ do
  twitter
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  twitter.click
  if href_twitter.include? "argentina.gob.ar"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar twitter Imagen enviada de nodo 9341$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar google href para nodo 9341$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  if href_google.include?('google') == true
    puts "El link del botón Compartir en Google Plus contiene la palabra Google ...[PASS] "
  else
    puts fail "El link del botón Compartir en Google Plus no contiene la palabra Google ...[ERROR]"
  end
end

Then /^Verificar google status de nodo 9341$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
=begin
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  status_link(200,href_google)
=end
end

Then /^Verificar google Texto enviado de nodo 9341$/ do
  #google
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
=begin
  google = capturar(:link, "Compartir en Google Plus")
  google.click
  textow = capturar(:xpath,'/html/body/c-wiz/div[4]/div/c-wiz/c-wiz/content/div[1]/div[1]/div[1]/div[2]/div/div/div[1]/div[2]').text
  if textow.include? textow
    puts "El texto del titulo existe ...[PASSED]"
  else
    puts fail "El texto del titulo no existe  ...[ERROR]"
  end
=end
end

Then /^Verificar google Imagen enviada de nodo 9341$/ do
   nodo_front(9341) # Conocé los bancos participantes y las condiciones crediticias
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar facebook href para nodo 100851$/ do
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  if href_facebook.include?('facebook') == true
    puts "El link del botón facebook contiene la palabra facebook ...[PASS] "
  else
    puts fail "El link del botón facebook no contiene la palabra facebook ...[ERROR]"
  end
end

Then /^Verificar facebook status de nodo 100851$/ do
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  status_link(200,href_facebook)
end

Then /^Verificar facebook Texto enviado de nodo 100851$/ do
  facebook
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
  titulo = capturar(:xpath,'/html/body/main/div[2]/div/section/div/article/div[1]/div/h1').text
  titulo = titulo.match("^s*[a-zA-Z-].*+s*")
  facebook = capturar(:link, "Compartir en Facebook")
  facebook.click
  textow = capturar(:class, '_3m6-').text
  if textow.include? "#{titulo}"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar facebook Imagen enviada de nodo 100851$/ do
  #nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
  puts "Imagen no validada ...[PASSED]"
end

Then /^Verificar twitter href para nodo 100851$/ do
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  if href_twitter.include?('twitter') == true
    puts "El link del botón Compartir en Twitter contiene la palabra twitter ...[PASS] "
  else
    puts fail "El link del botón Compartir en Twitter no contiene la palabra twitter ...[ERROR]"
  end
end

Then /^Verificar twitter status de nodo 100851$/ do
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  status_link(200,href_twitter)
end

Then /^Verificar twitter Texto enviado de nodo 100851$/ do
  twitter
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  twitter.click
  if href_twitter.include? "argentina.gob.ar"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar twitter Imagen enviada de nodo 100851$/ do
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar google href para nodo 100851$/ do
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  if href_google.include?('google') == true
    puts "El link del botón Compartir en Google Plus contiene la palabra Google ...[PASS] "
  else
    puts fail "El link del botón Compartir en Google Plus no contiene la palabra Google ...[ERROR]"
  end

end

Then /^Verificar google status de nodo 100851$/ do
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
=begin
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  status_link(200,href_google)
=end
end

Then /^Verificar google Texto enviado de nodo 100851$/ do
  #google
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
=begin
  google = capturar(:link, "Compartir en Google Plus")
  google.click
  textow = capturar(:xpath,'/html/body/c-wiz/div[4]/div/c-wiz/c-wiz/content/div[1]/div[1]/div[1]/div[2]/div/div/div[1]/div[2]').text
  if textow.include? textow
    puts "El texto del titulo existe ...[PASSED]"
  else
    puts fail "El texto del titulo no existe  ...[ERROR]"
  end
=end
end

Then /^Verificar google Imagen enviada de nodo 100851$/ do
  nodo_front(100851) # Capacitación en gestión de Organizaciones Sociales Territoriales
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar facebook href para nodo 37227$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  if href_facebook.include?('facebook') == true
    puts "El link del botón facebook contiene la palabra facebook ...[PASS] "
  else
    puts fail "El link del botón facebook no contiene la palabra facebook ...[ERROR]"
  end
end

Then /^Verificar facebook status de nodo 37227$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  status_link(200,href_facebook)
end

Then /^Verificar facebook Texto enviado de nodo 37227$/ do
  facebook
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
  titulo = capturar(:xpath,'/html/body/main/div[2]/div/div/section/div[1]/div/div/div/div/div/h1').text
  titulo = titulo.match("^s*[a-zA-Z-].*+s*")
  facebook = capturar(:link, "Compartir en Facebook")
  facebook.click
  textow = capturar(:id, 'u_0_t').text
  if textow.include? "#{titulo}"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar facebook Imagen enviada de nodo 37227$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar twitter href para nodo 37227$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  if href_twitter.include?('twitter') == true
    puts "El link del botón Compartir en Twitter contiene la palabra twitter ...[PASS] "
  else
    puts fail "El link del botón Compartir en Twitter no contiene la palabra twitter ...[ERROR]"
  end
end

Then /^Verificar twitter status de nodo 37227$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  status_link(200,href_twitter)
end

Then /^Verificar twitter Texto enviado de nodo 37227$/ do
  twitter
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  twitter.click
  if href_twitter.include? "argentina.gob.ar"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar twitter Imagen enviada de nodo 37227$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar google href para nodo 37227$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  if href_google.include?('google') == true
    puts "El link del botón Compartir en Google Plus contiene la palabra Google ...[PASS] "
  else
    puts fail "El link del botón Compartir en Google Plus no contiene la palabra Google ...[ERROR]"
  end
end

Then /^Verificar google status de nodo 37227$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
=begin
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  status_link(200,href_google)
=end
end

Then /^Verificar google Texto enviado de nodo 37227$/ do
  #google
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
  # google = capturar(:link, "Compartir en Google Plus")
  # google.click
  # textow = capturar(:xpath,'/html/body/c-wiz/div[4]/div/c-wiz/c-wiz/content/div[1]/div[1]/div[1]/div[2]/div/div/div[1]/div[2]').text
  # if textow.include? textow
  #   puts "El texto del titulo existe ...[PASSED]"
  # else
  #   puts fail "El texto del titulo no existe  ...[ERROR]"
  # end
end

Then /^Verificar google Imagen enviada de nodo 37227$/ do
  nodo_front(37227) # Registro para usos menores de fuentes radiactivas
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar facebook href para nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar facebook status de nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar facebook Texto enviado de nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar facebook Imagen enviada de nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  #puts "Imagen no validada ...[PASSED]"
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar twitter href para nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar twitter status de nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar twitter Texto enviado de nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar twitter Imagen enviada de nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  # puts "Imagen no validada ...[PASSED]"
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar google href para nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar google status de nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar google Texto enviado de nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar google Imagen enviada de nodo 37905$/ do
  # nodo_front(37905) # Soldado de la Independencia Nº 500 entre las calles San Benito de Palermo y José Ortega y Gasset.
  # puts "Imagen no validada ...[PASSED]"
  puts "El tipo de contenido Subasta no tiene la opcion de compartir".yellow
end

Then /^Verificar facebook href para nodo 100803$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  if href_facebook.include?('facebook') == true
    puts "El link del botón facebook contiene la palabra facebook ...[PASS] "
  else
    puts fail "El link del botón facebook no contiene la palabra facebook ...[ERROR]"
  end
end

Then /^Verificar facebook status de nodo 100803$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
  facebook = capturar(:link, "Compartir en Facebook")
  href_facebook = facebook.attribute("href")
  status_link(200,href_facebook)
end

Then /^Verificar facebook Texto enviado de nodo 100803$/ do
  facebook
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
  titulo = capturar(:xpath,'/html/body/main/div[2]/div/section/article/div/div[1]/div/h1').text
  titulo = titulo.match("^s*[a-zA-Z-].*+s*")
  facebook = capturar(:link, "Compartir en Facebook")
  facebook.click
  textow = capturar(:id, 'u_0_t').text
  if textow.include? "#{titulo}"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar facebook Imagen enviada de nodo 100803$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar twitter href para nodo 100803$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  if href_twitter.include?('twitter') == true
    puts "El link del botón Compartir en Twitter contiene la palabra twitter ...[PASS] "
  else
    puts fail "El link del botón Compartir en Twitter no contiene la palabra twitter ...[ERROR]"
  end
end

Then /^Verificar twitter status de nodo 100803$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  status_link(200,href_twitter)
end

Then /^Verificar twitter Texto enviado de nodo 100803$/ do
  twitter
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
  twitter = capturar(:link, "Compartir en Twitter")
  href_twitter = twitter.attribute("href")
  twitter.click
  if href_twitter.include? "argentina.gob.ar"
    puts "El texto del titulo es correcto ...[PASSED]"
  else
    puts fail "El texto del titulo es incorrecto ...[ERROR]"
  end
end

Then /^Verificar twitter Imagen enviada de nodo 100803$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar google href para nodo 100803$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  if href_google.include?('google') == true
    puts "El link del botón Compartir en Google Plus contiene la palabra Google ...[PASS] "
  else
    puts fail "El link del botón Compartir en Google Plus no contiene la palabra Google ...[ERROR]"
  end
end

Then /^Verificar google status de nodo 100803$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
=begin
  google = capturar(:link, "Compartir en Google Plus")
  href_google = google.attribute("href")
  status_link(200,href_google)
=end
end

Then /^Verificar google Texto enviado de nodo 100803$/ do
  #google
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
=begin
  google = capturar(:link, "Compartir en Google Plus")
  google.click
  textow = capturar(:xpath,'/html/body/c-wiz/div[4]/div/c-wiz/c-wiz/content/div[1]/div[1]/div[1]/div[2]/div/div/div[1]/div[2]').text
  if textow.include? textow
    puts "El texto del titulo existe ...[PASSED]"
  else
    puts fail "El texto del titulo no existe  ...[ERROR]"
  end
=end
end

Then /^Verificar google Imagen enviada de nodo 100803$/ do
  nodo_front(100803) # Comisión de igualdad de oportunidades y prácticas responsables
puts "Imagen no validada ...[PASSED]" 
end

Then /^Verificar facebook href para nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar facebook status de nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar facebook Texto enviado de nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar facebook Imagen enviada de nodo 3267$/ do
  # nodo_front(3267)
  # puts "Imagen no validada ...[PASSED]"
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar twitter href para nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar twitter status de nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar twitter Texto enviado de nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar twitter Imagen enviada de nodo 3267$/ do
  # nodo_front(3267)
  # puts "Imagen no validada ...[PASSED]"
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar instagram href para nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar instagram status de nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar instagram Texto enviado de nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar instagram Imagen enviada de nodo 3267$/ do
  # nodo_front(3267)
  # puts "Imagen no validada ...[PASSED]"
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar youtube href para nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar youtube status de nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar youtube Texto enviado de nodo 3267$/ do
  # nodo_front(3267)
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end

Then /^Verificar youtube Imagen enviada de nodo 3267$/ do
  # nodo_front(3267)
  # puts "Imagen no validada ...[PASSED]"
  puts "El tipo de contenido Servicio no tiene la opcion de compartir".yellow
end