Then /^01- Casa Rosada$/ do
  organismos
  organismo_a_encontrar = "Casa Rosada"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[1]/div/div/div/div/div/div[1]')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[1]/div/div/div/div/div/div[1]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^02- Secretaría General$/ do
  organismos
  organismo_a_encontrar = "Secretaría General"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[1]/div/div/div/div/div/div[2]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[1]/div/div/div/div/div/div[2]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^03- Secretaría Legal y Técnica$/ do
  organismos
  organismo_a_encontrar = "Secretaría Legal y Técnica"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[1]/div/div/div/div/div/div[3]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[1]/div/div/div/div/div/div[3]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^04- Sedronar$/ do
  organismos
  organismo_a_encontrar = "Sedronar"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[1]/div/div/div/div/div/div[4]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[1]/div/div/div/div/div/div[4]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^00- Jefatura de Gabinete de Ministros$/ do
  organismos
  organismo_a_encontrar = "Jefatura de Gabinete de Ministros"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[1]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[1]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^05- Secretaría de Relaciones Políticas y Parlamentarias$/ do
  organismos
  organismo_a_encontrar = "Secretaría de Relaciones Políticas y Parlamentarias"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[2]/a/div/h3')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[2]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^06- Secretaría de Asuntos Estratégicos$/ do
  organismos
  organismo_a_encontrar = "Secretaría de Asuntos Estratégicos"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[3]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[3]/a')
  link_organismo = lin_organismo.attribute("href")
  link_organismo = "https://www.argentina.gob.ar/jefatura/asuntosestrategicos"
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^07- Secretaría de Comunicación Pública$/ do
  organismos
  organismo_a_encontrar = "Secretaría de Comunicación Pública"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[4]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[4]/a')
  link_organismo = lin_organismo.attribute("href")
  link_organismo = "https://www.argentina.gob.ar/comunicacionpublica"
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^08- Secretaría de Coordinación Interministerial$/ do
  organismos
  organismo_a_encontrar = "Secretaría de Coordinación Interministerial"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[5]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[5]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^09- Secretaría de Coordinación de Políticas Públicas$/ do
  organismos
  organismo_a_encontrar = "Secretaría de Coordinación de Políticas Públicas"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[6]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[6]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^10- Sistema Federal de Medios y Contenidos Públicos$/ do
  organismos
  organismo_a_encontrar = "Sistema Federal de Medios y Contenidos Públicos"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[7]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[7]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^11- Agencia de Administración de Bienes del Estado$/ do
  organismos
  organismo_a_encontrar = "Agencia de Administración de Bienes del Estado"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[8]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[8]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^12- Unidad Plan Belgrano$/ do
  organismos
  organismo_a_encontrar = "Unidad Plan Belgrano"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[9]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[9]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^13- Dirección Nacional de Inversión Pública$/ do
  organismos
  organismo_a_encontrar = "Dirección Nacional de Inversión Pública"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[10]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div[10]/a')
  link_organismo = lin_organismo.attribute("href")
  puts link_organismo.blue
  link_organismo = "https://dnip.jgm.gob.ar"
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  #status_link(200,link_organismo)
end

Then /^14- Ministerio de Educación, Cultura, Ciencia y Tecnología$/ do
  organismos
  organismo_a_encontrar = "Ministerio de Educación, Cultura, Ciencia y Tecnología"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[1]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[1]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^15- Ministerio de Defensa$/ do
  organismos
  organismo_a_encontrar = "Ministerio de Defensa"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[2]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[2]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^16- Ministerio de Salud y Desarrollo Social$/ do
  organismos
  organismo_a_encontrar = "Ministerio de Salud y Desarrollo Social"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[3]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[3]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^17- Ministerio de Hacienda$/ do
  organismos
  organismo_a_encontrar = "Ministerio de Hacienda"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[4]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[4]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^18- Ministerio del Interior, Obras Públicas y Vivienda$/ do
  organismos
  organismo_a_encontrar = "Ministerio del Interior, Obras Públicas y Vivienda"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[5]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[5]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^19- Ministerio de Justicia y Derechos Humanos$/ do
  organismos
  organismo_a_encontrar = "Ministerio de Justicia y Derechos Humanos"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[6]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[6]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^20- Ministerio de Producción y Trabajo$/ do
  organismos
  organismo_a_encontrar = "Ministerio de Producción y Trabajo"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[7]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[7]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^21- Ministerio de Relaciones Exteriores y Culto$/ do
  organismos
  organismo_a_encontrar = "Ministerio de Relaciones Exteriores y Culto"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[8]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[8]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^22- Ministerio de Seguridad$/ do
  organismos
  organismo_a_encontrar = "Ministerio de Seguridad"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[9]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[9]/a')
  link_organismo = lin_organismo.attribute("href")
  puts link_organismo.blue
  link_organismo = "https://www.argentina.gob.ar/seguridad"
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^23- Ministerio de Transporte$/ do
  organismos
  organismo_a_encontrar = "Ministerio de Transporte"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[10]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[10]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^24- Corte Suprema de Justicia de la Nación$/ do
  organismos
  organismo_a_encontrar = "Corte Suprema de Justicia de la Nación"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[7]/div/div/div/div/div[1]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[7]/div/div/div/div/div[1]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^25- Ministerio Público Fiscal – Procuración General de la Nación$/ do
  organismos
  organismo_a_encontrar = "Ministerio Público Fiscal – Procuración General de la Nación"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[7]/div/div/div/div/div[2]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[7]/div/div/div/div/div[2]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^26- Ministerio Público de la Defensa$/ do
  organismos
  organismo_a_encontrar = "Ministerio Público de la Defensa"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[7]/div/div/div/div/div[3]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[7]/div/div/div/div/div[3]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^27- Congreso de la Nación Argentina$/ do
  organismos
  organismo_a_encontrar = "Congreso de la Nación Argentina"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[9]/div/div/div/div/div[1]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[9]/div/div/div/div/div[1]/a')
  link_organismo = lin_organismo.attribute("href")
  puts link_organismo.blue
  link_organismo = "https://www.congreso.gob.ar/"
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  #status_link(200,link_organismo)
end

Then /^28- Honorable Senado de la Nación$/ do
  organismos
  organismo_a_encontrar = "Honorable Senado de la Nación"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[9]/div/div/div/div/div[2]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[9]/div/div/div/div/div[2]/a')
  link_organismo = lin_organismo.attribute("href")
  puts link_organismo.blue
  link_organismo = "http://www.senado.gov.ar/"
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  #status_link(200,link_organismo)
end

Then /^29- Honorable Cámara de Diputados de la Nación$/ do
  organismos
  organismo_a_encontrar = "Honorable Cámara de Diputados de la Nación"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[9]/div/div/div/div/div[3]/a/div/h3')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[9]/div/div/div/div/div[3]/a')
  link_organismo = lin_organismo.attribute("href")
  puts link_organismo.blue
  link_organismo = "https://www.hcdn.gob.ar/"
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  #status_link(200,link_organismo)
end

