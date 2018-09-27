# encoding: utf-8
def nodo_front(numero_nodo)
  @browser.get "https://www.argentina.gob.ar/node/#{numero_nodo}"
end

def facebook
  @browser.get "https://www.facebook.com/"
  mail_bot ='eaarached@gmail.com'
  pass_bot ='modernizacion'
  capturar(:id,'email').send_keys mail_bot
  capturar(:id,'pass').send_keys pass_bot
  capturar(:id,'loginbutton').click
  esperar(1)
  puts "El usuario: #{mail_bot} ingreso a www.facebook.com ...[PASS]".blue
end


def google
  @browser.get "https://accounts.google.com/signin/v2/identifier"
  mail_bot = 'automatic.test.bot@gmail.com'
  pass_bot = 'modernizacion'
  capturar(:id,'identifierId').send_keys mail_bot
  capturar(:id,'identifierNext').click
  esperar(1)
  capturar(:class,'zHQkBf').send_keys pass_bot
  capturar(:id,'passwordNext').click
  esperar(1)
  puts "El usuario: #{mail_bot} ingreso a accounts.google.com ...[PASS]".blue
end

def twitter
  @browser.get "https://twitter.com/account/access"
  mail_bot = 'eaarached@gmail.com'
  pass_bot = 'modernizacion'
  capturar(:class, 'js-initial-focus').send_keys mail_bot
  capturar(:class, 'js-initial-focus').send_keys(:tab,pass_bot)
  capturar(:xpath, '/html/body/div[1]/div[2]/div/div/div[1]/form/div[2]/button').click
  puts "El usuario: #{mail_bot} ingreso a twitter.com ...[PASS]".blue
  esperar(10)

end

def instagram
  @browser.get "https://www.instagram.com/accounts/login/"
  mail_bot = 'automatic.test.bot@gmail.com'
  pass_bot = 'modernizacion'
  capturar(:class,'zyHYP').send_keys mail_bot
  capturar(:name, 'password').send_keys pass_bot
  capturar(:class, 'yZn4P').click
  esperar(3)
  puts "El usuario: #{mail_bot} ingreso a www.instagram.com ...[PASS]".blue
end

def youtube
  @browser.get "https://accounts.google.com/signin/v2/identifier"
  mail_bot = 'automatic.test.bot@gmail.com'
  pass_bot = 'modernizacion'
  capturar(:id,'identifierId').send_keys mail_bot
  capturar(:id,'identifierNext').click
  esperar(1)
  capturar(:class,'zHQkBf').send_keys pass_bot
  capturar(:id,'passwordNext').click
  esperar(1)
  @browser.get "https://www.youtube.com/"
  puts "El usuario: #{mail_bot} ingreso a www.youtube.com ...[PASS]".blue
end


def sube
  @browser.get "https://www.argentina.gob.ar/redsube"
end

def sube_registro
  @browser.get "https://tarjetasube.sube.gob.ar/SubeWeb/WebForms/Account/Views/clave-sube-registro.aspx"
end

def sube_calculadora
  @browser.get "https://www.argentina.gob.ar/redsube/simulador"
end

def organismos
  @browser.get "https://www.argentina.gob.ar/organismos"
end

def go(pagina)
  @browser.get pagina
end

def listado_fecha(fecha_1)
  fecha_1 = fecha_1.text
  fecha_1 = fecha_1.gsub('de ', '')
  fecha_1 = fecha_1.gsub(' ', '/')
  fecha_1 =  fecha_1.gsub('Enero','01').gsub('Febrero','02').gsub('Marzo','03').gsub('Abril','04').gsub('Mayo','05').gsub('Junio','06').gsub('Julio','07').gsub('Agosto','08').gsub('Septiembre','09').gsub('Octubre','10').gsub('Noviembre','11').gsub('Diciembre', '12')
  fecha_1 = Date.strptime(fecha_1, "%d/%m/%Y")
  return fecha_1
end





def miargentina_login
  cuit = 27371491657
  psw = "modernizacion"
  go("https://id.argentina.gob.ar/ingresar/")
  usuario = capturar(:id, 'id_number')
  usuario.send_keys cuit
  continuar =  capturar(:class, "loginCuilSession")
  continuar.click
  contrasena = capturar(:id, 'id_number')
  contrasena.send_keys psw
  continuado =  capturar(:class, "loginCuilSession")
  continuado.click
end




def windowGO_segun_texto(target)
  index   = 0
  handles = @browser.driver.window_handles
  @browser.windows.each do |window|
    if window.text.include?(target)
      @browser.driver.switch_to.window(handles[index])
      break
    end
    index += 1
  end
end



def eliminar_mail_de_turnos
  google
  go("https://www.google.com/gmail/")
  mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[1]/td[6]/div/div/div/span/span')
  mail_02 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[2]/td[6]/div/div/div/span/span')
  mail_03 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[3]/td[6]/div/div/div/span/span')
  mail_04 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[4]/td[6]/div/div/div/span/span')
  mail_05 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[5]/td[6]/div/div/div/span/span')
  mail_06 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[6]/td[6]/div/div/div/span/span')
  mail_07 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[7]/td[6]/div/div/div/span/span')
  mail_08 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[8]/td[6]/div/div/div/span/span')
  mail_09 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[9]/td[6]/div/div/div/span/span')
  sistema_nacional_de_turnos = "Sistema Nacional de Turnos"
  checkbox = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div/div[1]/div[1]/div/div/div[1]/div/div[1]/span')
  checkbox.click
  if mail_01.text == sistema_nacional_de_turnos
    mail_01.click
    tachito_mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/div')
    tachito_mail_01.click
  else
    if mail_02.text == sistema_nacional_de_turnos
      mail_02.click
      tachito_mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/div')
      tachito_mail_01.click
    else
      if mail_03.text == sistema_nacional_de_turnos
        mail_03.click
        tachito_mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/div')
        tachito_mail_01.click
      else
        if mail_04.text == sistema_nacional_de_turnos
          mail_04.click
          tachito_mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/div')
          tachito_mail_01.click
        else
          if mail_05.text == sistema_nacional_de_turnos
            mail_05.click
            tachito_mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/div')
            tachito_mail_01.click
          else
            if mail_06.text == sistema_nacional_de_turnos
              mail_06.click
              tachito_mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/div')
              tachito_mail_01.click
            else
              if mail_07.text == sistema_nacional_de_turnos
                mail_07.click
                tachito_mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/div')
                tachito_mail_01.click
              else
                if mail_08.text == sistema_nacional_de_turnos
                  mail_08.click
                  tachito_mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/div')
                  tachito_mail_01.click
                else
                  if mail_09.text == sistema_nacional_de_turnos
                    mail_09.click
                    tachito_mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/div')
                    tachito_mail_01.click
                  else
                    puts "NADA QUE ELIMINAR".yellow
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  puts "MAIL ELIMINADO.................................[PASSED]".blue
end








def ultima
  @browser.switch_to.window(@browser.window_handles.last)
end

def primera
  @browser.switch_to.window(@browser.window_handles.first)
end


def path_root_proyecto
  aert = File.dirname(__FILE__)
  quitar = aert.match(/.Argentina.*/)
  aert = aert.gsub("#{quitar}","")
  return aert
end








