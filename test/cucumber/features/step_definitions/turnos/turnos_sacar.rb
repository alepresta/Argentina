Then /^1- Sacar un turno y cancelarlo en el momento$/ do
  pagina = "https://turnos.argentina.gob.ar/turnos/seleccionTurno/9"
  go(pagina)
  provincia = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[1]/select')
  select_click(provincia,"Capital Federal")
  localidad = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[2]/select')
  select_click(localidad,"Belgrano")
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
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[20]/label').click
  # horarios fin
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[3]/button[1]').click
  cuil = "20075980516"
  nombre = "JUAN CARLOS"
  apellido = "MANRIQUE"
  email = "automatic.test.bot@gmail.com"
  telefono = "1256987888"
  capturar(:id,'cuil').send_keys cuil
  capturar(:id,'nombre').send_keys nombre
  capturar(:id,'apellido').send_keys apellido
  capturar(:id,'email').send_keys email
  capturar(:id,'telefono').send_keys telefono
  capturar(:xpath,'/html/body/app-root/app-datos-tramite/div[2]/div/section/div/div/form/div[2]/div/button').click
  codigo_reserva = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[1]/p').text
  fecha = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[2]/p').text
  horario = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[3]/p').text
  tramite = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[4]/p').text
  punto_atencion1 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[1]').text
  punto_atencion2 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[2]').text
  puts "RESERVA DE TURNO .................................[PASSED]".blue
  puts "Código de reserva: #{codigo_reserva}".light_blue
  puts "Fecha: #{fecha}".light_blue
  puts "Horario: #{horario}".light_blue
  puts "Trámite: #{tramite}".light_blue
  puts "Punto de atención: #{punto_atencion1} , #{punto_atencion2}".light_blue
  # CANCELAR TURNO SACADO #
  capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/div/button').click
  # CONFIRMAR CANCELAR TURNO SACADO #
  capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]').click
  puts "TURNO CANCELADO.................................[PASSED]".blue

end


Then /^2- Sacar un turno y cancelarlo por mail$/ do
  eliminar_mail_de_turnos
  pagina = "https://turnos.argentina.gob.ar/turnos/seleccionTurno/9"
  go(pagina)
  provincia = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[1]/select')
  select_click(provincia,"Capital Federal")
  localidad = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[2]/select')
  select_click(localidad,"Belgrano")
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
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[20]/label').click
  # horarios fin
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[3]/button[1]').click
  cuil = "20075980516"
  nombre = "JUAN CARLOS"
  apellido = "MANRIQUE"
  email = "automatic.test.bot@gmail.com"
  telefono = "1256987888"
  capturar(:id,'cuil').send_keys cuil
  capturar(:id,'nombre').send_keys nombre
  capturar(:id,'apellido').send_keys apellido
  capturar(:id,'email').send_keys email
  capturar(:id,'telefono').send_keys telefono
  capturar(:xpath,'/html/body/app-root/app-datos-tramite/div[2]/div/section/div/div/form/div[2]/div/button').click
  codigo_reserva = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[1]/p').text
  fecha = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[2]/p').text
  horario = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[3]/p').text
  tramite = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[4]/p').text
  punto_atencion1 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[1]').text
  punto_atencion2 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[2]').text
  puts "RESERVA DE TURNO .................................[PASSED]".blue
  puts "Código de reserva: #{codigo_reserva}".light_blue
  puts "Fecha: #{fecha}".light_blue
  puts "Horario: #{horario}".light_blue
  puts "Trámite: #{tramite}".light_blue
  puts "Punto de atención: #{punto_atencion1} , #{punto_atencion2}".light_blue
  puts "RESERVA DE TURNO .................................[PASSED]".blue

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
  if mail_01.text == sistema_nacional_de_turnos
    mail_01.click
  else
    if mail_02.text == sistema_nacional_de_turnos
      mail_02.click
    else
      if mail_03.text == sistema_nacional_de_turnos
        mail_03.click
      else
        if mail_04.text == sistema_nacional_de_turnos
          mail_04.click
        else
          if mail_05.text == sistema_nacional_de_turnos
            mail_05.click
          else
            if mail_06.text == sistema_nacional_de_turnos
              mail_06.click
            else
              if mail_07.text == sistema_nacional_de_turnos
                mail_07.click
              else
                if mail_08.text == sistema_nacional_de_turnos
                  mail_08.click
                else
                  if mail_09.text == sistema_nacional_de_turnos
                    mail_09.click
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  qqq = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[2]/div/table/tr/td[1]/div[2]/div[2]/div/div[3]/div/div/div/div/div/div[1]/div[2]/div[3]/div[3]/div/div[2]/table[2]/tbody/tr/td/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[38]/td/a')
  qqq.click
  @browser.switch_to.window(@browser.window_handles.last)
  capturar(:xpath,'/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button').click
  capturar(:xpath,'/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]').click
  @browser.switch_to.window(@browser.window_handles.first)
  esperar(10)
  #eliminar_mail = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[3]/div')
  eliminar_mail = capturar(:xpath,'//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]/div')
  eliminar_mail.click
  puts "TURNO CANCELADO.................................[PASSED]".blue
end