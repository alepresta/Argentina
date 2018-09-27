# encoding: utf-8
require 'colorize'
require 'selenium-webdriver'
require 'phantomjs'
require_relative '../pages/feats'
require 'open-uri'
require 'selenium-webdriver'
=begin
require_relative '../envs/env.rb.chrome'
require_relative '../envs/env.rb.edit'
require_relative '../envs/env.rb.firefox'
require_relative '../envs/env.rb.headless'
require_relative '../envs/env.rb.safari'
=end


def menu_configurarMiCuenta #bien
  menu_980px = capturar(:class,'fa-bars')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      configurarMiCuenta_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[8]/a')
      configurarMiCuenta_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      configurarMiCuenta_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[8]/a')
      configurarMiCuenta_menu_980px.click
    end
  else
    configurarMiCuenta_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[15]/a')
    configurarMiCuenta_menu.click
  end
end

def menu_salir #bien
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      salir_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[9]/a')
      salir_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      salir_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[9]/a')
      salir_menu_980px.click
    end
  else
    salir_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[16]/a')
    salir_menu.click
  end
end

def menu_salud # bien
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      salud_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[5]/a')
      salud_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      salud_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[5]/a')
      salud_menu_980px.click
    end
  else
    salud_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[5]/a')
    salud_menu.click
  end
end

def menu_credenciales #bien
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      credenciales_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[2]/a')
      credenciales_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      credenciales_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[2]/a')
      credenciales_menu_980px.click
    end
  else
    credenciales_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[2]/a')
    credenciales_menu.click
  end
end

def menu_discapacidad # bien
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      discapacidad_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[6]/a')
      discapacidad_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      discapacidad_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[6]/a')
      discapacidad_menu_980px.click
    end
  else
    discapacidad_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[6]/a')
    discapacidad_menu.click
  end
end

def menu_inicio # bien
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      inicio_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[1]/a')
      inicio_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      inicio_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[1]/a')
      inicio_menu_980px.click
    end
  else
    inicio_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[1]/a')
    inicio_menu.click
  end
end

def menu_turnos # bien
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      turnos_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[3]/a')
      turnos_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      turnos_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[3]/a')
      turnos_menu_980px.click
    end
  else
    turnos_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[3]/a')
    turnos_menu.click
  end
end

def menu_perfilConductor # ok o no se
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      perfilConductor_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[4]/a')
      perfilConductor_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      perfilConductor_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[4]/a')
      perfilConductor_menu_980px.click
    end
  else
    perfilConductor_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[4]/a')
    perfilConductor_menu.click
  end
end

def menu_formacion # ok
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      formacion_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[7]/a')
      formacion_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      formacion_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[1]/li[7]/a')
      formacion_menu_980px.click
    end
  else
    formacion_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[7]/a')
    formacion_menu.click
  end
end

def menu_datosBasicos # ok
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      datosBasicos_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[2]/a')
      datosBasicos_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      datosBasicos_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[2]/a')
      datosBasicos_menu_980px.click
    end
  else
    datosOpcionales_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[9]/a')
    datosOpcionales_menu.click
  end
end

def menu_datosOpcionales # ok
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      datosOpcionales_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[3]/a')
      datosOpcionales_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      datosOpcionales_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[3]/a')
      datosOpcionales_menu_980px.click
    end
  else
    datosOpcionales_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[10]/a')
    datosOpcionales_menu.click
  end
end

def menu_misVehiculos # ok
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      misVehiculos_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[4]/a')
      misVehiculos_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      misVehiculos_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[4]/a')
      misVehiculos_menu_980px.click
    end
  else
    misVehiculos_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[11]/a')
    misVehiculos_menu.click
  end
end

def menu_misDispositivos  # ok
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      misDispositivos_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[5]/a')
      misDispositivos_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      misDispositivos_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[5]/a')
      misDispositivos_menu_980px.click
    end
  else
    misDispositivos_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[11]/a')
    misDispositivos_menu.click
  end
end

def menu_redesSociales  # ok
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      redesSociales_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[6]/a')
      redesSociales_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      redesSociales_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[6]/a')
      redesSociales_menu_980px.click
    end
  else
    redesSociales_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[13]/a')
    redesSociales_menu.click
  end
end

def menu_configurarNotificaciones  # ok
  menu_980px = capturar(:xpath,'/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/li/a/i')
  if menu_980px.displayed?
    menu_980px.click
    if capturar(:class,'fa-file-text-o').displayed?
      configurarNotificaciones_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[7]/a')
      configurarNotificaciones_menu_980px.click
    else
      capturar(:class,'fa-bars').click
      configurarNotificaciones_menu_980px = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[2]/div/div/div[2]/li[7]/a')
      configurarNotificaciones_menu_980px.click
    end
  else
    configurarNotificaciones_menu = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[14]/a')
    configurarNotificaciones_menu.click
  end
end























