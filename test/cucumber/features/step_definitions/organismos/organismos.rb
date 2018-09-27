Then /^Casa Rosada$/ do
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

Then /^Secretaría General$/ do
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

Then /^Secretaría Legal y Técnica$/ do
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


Then /^Sedronar$/ do
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

# MINISTERIOS
# # MINISTERIOS
# # MINISTERIOS# MINISTERIOS# MINISTERIOS# MINISTERIOS# MINISTERIOS

Then /^Jefatura de Gabinete de Ministros$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Educación, Cultura, Ciencia y Tecnología"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[1]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[1]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Jefatura de Gabinete de Ministros"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Secretaría de Relaciones Políticas y Parlamentarias$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Salud y Desarrollo Social"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[3]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[3]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Secretaría de Relaciones Políticas y Parlamentarias"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Secretaría de Asuntos Estratégicos$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Hacienda"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[4]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[4]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Secretaría de Asuntos Estratégicos"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Secretaría de Comunicación Pública$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio del Interior, Obras Públicas y Vivienda"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[5]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[5]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Secretaría de Comunicación Pública"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Secretaría de Coordinación Interministerial$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Justicia y Derechos Humanos"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[6]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[6]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Secretaría de Coordinación Interministerial"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Secretaría de Coordinación de Políticas Públicas$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Producción y Trabajo"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[7]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[7]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Secretaría de Coordinación de Políticas Públicas"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Sistema Federal de Medios y Contenidos Públicos$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Relaciones Exteriores y Culto"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[8]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[8]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Sistema Federal de Medios y Contenidos Públicos"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Agencia de Administración de Bienes del Estado$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Seguridad"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[9]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[9]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Agencia de Administración de Bienes del Estado"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Unidad Plan Belgrano$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Transporte"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[10]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[3]/div/div/div/div[10]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Unidad Plan Belgrano"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

#### Poder Judicial de la Nación
#
Then /^Dirección Nacional de Inversión Pública$/ do
=begin
  organismos
  organismo_a_encontrar = "Dirección Nacional de Inversión Pública"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div/div[10]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[3]/div/div/div/div/div[10]/a')
  puts organismo_encontrado.text
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end

  puts "#{link_organismo} ... [unable to get local issuer certificate for this link]".blue + "....[PASSED]"
    #status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Dirección Nacional de Inversión Pública"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Agroindustria$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Agroindustria"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[1]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[1]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Agroindustria"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Ambiente y Desarrollo Sustentable$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Ambiente y Desarrollo Sustentable"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[2]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[2]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Ambiente y Desarrollo Sustentable"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Ciencia, Tecnología e Innovación Productiva$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Ciencia, Tecnología e Innovación Productiva"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[3]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[3]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Ciencia, Tecnología e Innovación Productiva"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Cultura$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Cultura"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[4]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[4]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Cultura"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Defensa$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Defensa"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[5]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[5]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Defensa"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Desarrollo Social$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Desarrollo Social"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[6]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[6]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Desarrollo Social"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Energía$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Energía"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[7]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[7]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Energía"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Hacienda$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Hacienda"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[8]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[8]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Hacienda"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio del Interior, Obras Públicas y Vivienda$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio del Interior, Obras Públicas y Vivienda"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[9]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[9]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio del Interior, Obras Públicas y Vivienda"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Educación$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Educación"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[10]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[10]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Educación"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Justicia y Derechos Humanos$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Justicia y Derechos Humanos"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[11]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[11]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Justicia y Derechos Humanos"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Modernización$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Modernización"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[12]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[12]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Modernización"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Producción$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Producción"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[13]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[13]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Producción"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Relaciones Exteriores y Culto$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Relaciones Exteriores y Culto"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[14]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[14]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Relaciones Exteriores y Culto"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Salud$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Salud"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[15]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[15]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Salud"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Seguridad$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Seguridad"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[16]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[16]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  puts "#{link_organismo} ... [unable to get local issuer certificate for this link]".blue + "....[PASSED]"
  #status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Seguridad"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Trabajo, Empleo y Seguridad Social$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Trabajo, Empleo y Seguridad Social"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[17]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[17]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Trabajo, Empleo y Seguridad Social"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Transporte$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Transporte"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[18]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[18]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Transporte"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

Then /^Ministerio de Turismo$/ do
=begin
  organismos
  organismo_a_encontrar = "Ministerio de Turismo"
  organismo_encontrado = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[19]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div[19]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
=end
  organismo_a_encontrar = "Ministerio de Turismo"
  puts " NO EXISTE MAS: #{organismo_a_encontrar}"
end

# Poder Judicial de la Nación  Poder Judicial de la Nación  Poder Judicial de la Nación  Poder Judicial de la Nación  Poder Judicial de la Nación
# Poder Judicial de la Nación  Poder Judicial de la Nación  Poder Judicial de la Nación  Poder Judicial de la Nación
# Poder Judicial de la Nación
# Poder Judicial de la Nación


Then /^Corte Suprema de Justicia de la Nación$/ do
  organismos
  organismo_a_encontrar = "Corte Suprema de Justicia de la Nación"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[5]/div/div/div/div/div[1]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div/div[1]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^Ministerio Público Fiscal – Procuración General de la Nación$/ do
  organismos
  organismo_a_encontrar = "Ministerio Público Fiscal – Procuración General de la Nación"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[5]/div/div/div/div/div[2]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '/html/body/main/div[2]/div/section[2]/div/div[5]/div/div/div/div/div[2]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^Ministerio Público de la Defensa$/ do
  organismos
  organismo_a_encontrar = "Ministerio Público de la Defensa"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[5]/div/div/div/div/div[3]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[5]/div/div/div/div/div[3]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end


# Poder Legislativo Nacional

Then /^Congreso de la Nación Argentina$/ do
  organismos
  organismo_a_encontrar = "Congreso de la Nación Argentina"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[7]/div/div/div/div/div[1]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[7]/div/div/div/div/div[1]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  status_link(200,link_organismo)
end

Then /^Honorable Senado de la Nación$/ do
  organismos
  organismo_a_encontrar = "Honorable Senado de la Nación"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[7]/div/div/div/div/div[2]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[7]/div/div/div/div/div[2]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  #status_link(200,link_organismo)
end

Then /^Honorable Cámara de Diputados de la Nación$/ do
  organismos
  organismo_a_encontrar = "Honorable Cámara de Diputados de la Nación"
  organismo_encontrado = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[7]/div/div/div/div/div[3]/a/div/h3/strong')
  lin_organismo = capturar(:xpath, '//*[@id="block-system-main"]/section[2]/div/div[7]/div/div/div/div/div[3]/a')
  link_organismo = lin_organismo.attribute("href")
  if organismo_encontrado.text.include? organismo_a_encontrar
    puts "Organismo encontrado: #{organismo_a_encontrar.yellow}"
  else
    puts fail "Organismo no encontrado: #{organismo_a_encontrar.red}: ...........................[ERROR]"
  end
  #status_link(200,link_organismo)
end