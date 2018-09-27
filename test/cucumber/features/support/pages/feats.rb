# encoding: utf-8
def line
  puts "-------------------------------------------------------------------------------".blue
end
def browser_MiArgentina
  @browser.get "https://id.argentina.gob.ar/"
end

def browser_MiArgentina_qa
  @browser.get "https://qa-mi.argentina.gob.ar/"
end

def browser_argentina_front
  @browser.get "https://www.argentina.gob.ar/"
end

def browser_turnos_front
  @browser.get "https://www.argentina.gob.ar/turnos"
end

def browser_finanzas_front
  @browser.get "https://www.argentina.gob.ar/finanzas"
end

def browser_vuce_novedades_front
  @browser.get "https://www.argentina.gob.ar/vuce/novedades"
end

def browser_anmat_front
  @browser.get "https://www.argentina.gob.ar/anmat"
end

def browser_salud_front
  @browser.get "https://www.argentina.gob.ar/salud"
end

def browser_hacienda_front
  @browser.get "https://www.argentina.gob.ar/hacienda"
end

def browser_politicassociales_front
  @browser.get "https://www.argentina.gob.ar/politicassociales"
end

def browser_transporte_front
  @browser.get "https://www.argentina.gob.ar/transporte"
end

def browser(browser)
  @browser.get browser
end

def passed
  puts "......[PASSED]".green
end
def image_text
  if image.text.length == 0
    puts "El panel superior es un: <Element_Imagen> "" [OK] "
  else
    puts "El contenido del link es: #{image.text}"
  end
end
def restarter_error
  puts "SE VERIFICA QUE ESTA REDIRECCIONANDO AL LUGAR INDICADO " "......[PASSED]".green
end
def restarter_error_r
  "¡¡¡¡¡ NO ESTA REDIRECCIONANDO AL LUGAR INDICADO !!!!! TENDRIA QUE ENCONTRAR: EN LA PÁGINA"
end

def passed_ok
  "......[PASSED]".green
end

def ifi
  if @nuevo_browser.include? @titlulo
    restarter_error
  else
    fail restarter_error_r
  end
end

def miArgentina_cerrar
  @browser.close
end


def cerrar
  @browser.close
end


def esta_este_elemento(clase, elemento)
  @browser.manage.timeouts.implicit_wait = 0
  result = @browser.find_elements(clase, elemento).size() > 0
  if result
    result = @browser.find_element(clase, elemento).displayed?
  end
  @browser.manage.timeouts.implicit_wait = 30
  return result
end

def captura_elemento(clase,elemento)
  @browser.find_element(clase, elemento)
end

def logueo(cuit,usuario_nombre,psw)
  browser_MiArgentina_qa
  usuario = capturar(:id, 'id_number')
  usuario.send_keys cuit
  continuar =  capturar(:class, "loginCuilSession")
  continuar.click
  contrasena = capturar(:id, 'id_number')
  contrasena.send_keys psw
  continuado =  capturar(:class, "loginCuilSession")
  continuado.click
  nombre_de_clase = capturar(:xpath, "/html/body/main/section[1]/div[2]/div/h1")
  txtesto =  nombre_de_clase.text
  puts txtesto
  if txtesto.include? usuario_nombre
    puts "El ingreso para #{usuario_nombre} es correcto...[PASSED]".green
  else
    fail puts "El ingreso para #{usuario_nombre} es incorrecto...[ERROR]".red
  end
end


def capturar(x,y)
  wait = Selenium::WebDriver::Wait.new(:timeout => 45)
  wait.until {
    element = @browser.find_element(x,y)
    element if element.displayed?
  }
  @browser.find_element(x,y)
end


def capture(x,y)
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)

  element = wait.until { @browser.find_element(x,y) }
  wait.until { element.displayed? }
  wait.until { element.enabled? }

  return @browser.find_element(x,y)
end


def esIgual(texto_que_deberia_estar, texto_capturado, imprime)
  if texto_que_deberia_estar.eql?(texto_capturado)
    text = true
    puts " #{imprime} ...[PASSED]"
  else
    if texto_capturado.include? texto_que_deberia_estar
      text = true
      puts " #{imprime} ...[PASSED]"
    else
      text = false
      fail puts " #{imprime}...[ERROR]"
    end
  end
  return text
end


def link_css_selector(css,link_que_deberia_ser)
  link_real = css.attribute("href")
  link_con_texto = css.text
  link_con_texto = link_con_texto.gsub('Abrir vínculo en nueva pestaña','')
  if link_que_deberia_ser.eql?(link_real)
    linksqs = true
    puts " #{link_con_texto}: lleva a...(#{link_real})...[PASSED]"
  else
    if link_real.include? link_que_deberia_ser
      linksqs = true
      puts " #{link_con_texto}: lleva a...(#{link_real})...[PASSED]"
    else
      linksqs = false
      fail puts " #{link_con_texto}: NO lleva a...(#{link_real})...[ERROR]"
    end
  end
  return linksqs
end

def donde_estoy
  @browser.current_url
end


def windows
  pestanias = @browser.window_handles
  puts pestanias
end

def windowsGO(pestania)
  @browser.switch_to.window(pestania)

end

def contar(css1, n_max)
  maxlength =  css1.attribute("maxlength")
  maxlength = maxlength.to_i
  name_prefijo =  css1.attribute("name")
  if maxlength > 0 and maxlength <= n_max
    puts " #{name_prefijo} debe ser maxlength = (#{n_max}):  el maxlength es = #{maxlength}...[PASSED]"
  else
    puts " #{name_prefijo} debe ser maxlength = (#{n_max}):   el maxlength es = #{maxlength}...[ERROR]".red
  end
end


def esradio?(css,tipo)
  atributo_donante = css.attribute("type")
  name_prefijo =  css.attribute("name")
  if atributo_donante == tipo
    puts "Campo #{name_prefijo} es tipo: \"#{atributo_donante}\". Debe ser del tipo: \"#{tipo}\"...[PASSED]"
  else
    puts "Campo #{name_prefijo} es tipo: \"#{atributo_donante}\". Debe ser del tipo: \"#{tipo}\"...[ERROR]".red
  end
end

def atributo(css,type,resultado_esperado_del_type)
  atributo_donante = css.attribute(type)
  name_prefijo =  css.attribute("name")
  if atributo_donante == resultado_esperado_del_type
    puts "Campo #{name_prefijo} es tipo: \"#{atributo_donante}\". Debe ser del tipo: \"#{resultado_esperado_del_type}\"...[PASSED]"
  else
    puts "Campo #{name_prefijo} es tipo: \"#{atributo_donante}\". Debe ser del tipo: \"#{resultado_esperado_del_type}\"...[ERROR]".red
  end
end

def esperar(segundos)
  sleep segundos
end


def captura_de_pantalla(texto_de_la_imagen)
  @browser.manage.window.resize_to(740, 968)
  @browser.save_screenshot "imagenes/screenshot_#{texto_de_la_imagen}.png"
end

def rt
  $browser.manage.window.resize_to(800, 800)
  driver.manage.window.move_to(300, 400)
  driver.manage.window.resize_to(500, 800)
  driver.manage.window.maximize
end

def titulo
  @browser.title
end


def link(esperado_href, actual_href)
  uri1 = URI(actual_href)
  uri2 = URI(esperado_href)
  puts fail "Se encontro el link: (#{actual_href}) es distinto de: link: (#{esperado_href}) ....[ERROR]".red unless [uri1.host,uri1.scheme] == [uri2.host,uri2.scheme]
  puts "href: #{esperado_href} ...[PASSED]"
end

def status(estatus_esperado)
  expected_status = ["#{estatus_esperado}", "OK"]
  link = @browser.find_element(:tag_name, "a").attribute("href")
  io = open(link)
  link_status = io.status
  unless expected_status == link_status
    puts fail " Link esta roto su status es:(#{link_status}) se esperaba un status (#{expected_status})..... [ERROR]".red
  end
  puts "href: #{donde_estoy} status(#{link_status})  ...[PASSED]"
end




def status_link(estatus_esperado,link)
  expected_status = ["#{estatus_esperado}", "OK"]
  io = open(link)
  link_status = io.status
  unless expected_status == link_status
    puts fail " Link esta roto su status es:(#{link_status}) se esperaba un status (#{expected_status})..... [ERROR]".red
  end
  puts "href: #{link} ... status(#{estatus_esperado})  ...[PASSED]"
end











def maximizar
  @browser.manage.window.maximize
end



def select_click(provincia,capital_federal)
  opciones_provincia = provincia.find_elements(tag_name: 'option')
  opciones_provincia.each { |option| option.click if option.text == capital_federal }
=begin
    selected_option = opciones_provincia.map { |option| option.text if option.selected? }.join
    expect(selected_option).to eql 'Option 1'
=end
end

def emergente
  #En algún momento tengo que hacer clic en myelementeso, como resultado, abriré una ventana emergente
@browser.switch_to.window(@browser.window_handles.last)

end




def imagenes_comparar(new_photo,expected_photo)
  require 'phashion'
  img1 = Phashion::Image.new new_photo
  img2 = Phashion::Image.new expected_photo
  return img1.duplicate? img2
end


def save_captcha(ee)
  require 'watir-get-image-content'
  img = @browser.image(xpath: '//*[@id="ctl00_captcha"]/td[2]/div[1]/span[1]/img')
  filename = "#{@path}/tmp/current_captcha.jpg"
  File.open(filename, 'wb'){|file| file.write( img.to_jpg) }
end

