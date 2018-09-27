Then /^Vaciar atendiendo todos los turnos$/ do
  go("https://qa-usuarios-turnos.argentina.gob.ar")
  esperar(1)
  #captura_de_pantalla("qa-usuarios-turnos")
  usuario = "sntagente@yopmail.com"
  password = "QAsnt2018"
  asd = capturar(:id,'usuario')
  esperar(1)
  asd.send_keys usuario
  asd.clear()
  asd.send_keys usuario
  cap = capturar(:id,'password')
  cap.send_keys password
  esperar(1)
  cap.clear()
  cap.send_keys password
  bot = capturar(:class,'btn-success')
  bot.click
  #############
  titulo_seccion_inicial = "esta"
  titulo_inicial = capturar(:class,'titulo-seccion').text
  if titulo_inicial.include? titulo_seccion_inicial
    salir_de_ventanilla = capturar(:xpath,'/html/body/app-root/main/div/app-turnos-cola/h1/button')
    salir_de_ventanilla.click
  end
  box2 = capturar(:xpath,'/html/body/app-root/main/div/app-ventanilla/div/div/div/div[2]/div[1]/div/h1')
  box2.click
  esperar(3)
  llamar_siguiente_numero = capturar(:class, 'btn-primary')
  llamar_siguiente_numero.click
  esperar(3)
  titulo = capturar(:class,'titulo-seccion').text
  titulo_que_deberia_estar = "ventanilla"
  if titulo.include? titulo_que_deberia_estar
    #puts "NO HAY TURNO"
    puts "NO HAY TURNOS:".bold
  else
    #puts "HAY TURNO"
    wixle = titulo.include? titulo_que_deberia_estar
    while wixle == false
      terminado = capturar(:xpath, '/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[2]/div[1]/button[3]')
      terminado.click
      terminado_completo = capturar(:xpath, '/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[2]/div[1]/div[2]/button[1]')
      terminado_completo.click
      nombre = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[1]/div[2]/div/div[1]/p').text
      apellido = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[1]/div[2]/div/div[2]/p').text
      cuil = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[1]/div[2]/div/div[3]/p').text
      puts "TURNOS ATENDIDOS PARA VACIAR: #{nombre.yellow} #{apellido.yellow}  \t  CUIL:#{cuil.yellow}".bold
      guardar = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[2]/div[2]/button')
      guardar.click
      esperar(1)
      llamar_siguiente_numero = capturar(:class, 'btn-primary')
      llamar_siguiente_numero.click
      esperar(3)
      titulo1 = capturar(:class,'titulo-seccion').text
      titulo1_que_deberia_estar = "ventanilla"
      wixle = titulo1.include? titulo1_que_deberia_estar
    end
  end
  esperar(1)
  salir_de_ventanilla = capturar(:xpath,'/html/body/app-root/main/div/app-turnos-cola/h1/button')
  salir_de_ventanilla.click
  esperar(1)
end

Then /^Sacar turnos por TOD$/ do
 # usuarios = [{"cuil":"20223568891","nombre":"Clara Ines","apellido":"Cuchuflita"},{"cuil":"20227568896","nombre":"Ruben Ignacio","apellido":"Trifler"},{"cuil":"20327568893","nombre":"Carlos Hugo","apellido":"Merlodesago"},{"cuil":"20384543856","nombre":"Agustin Eduardo","apellido":"Garcia"},{"cuil":"27114543859","nombre":"Lucho Damián","apellido":"Caradelito"}]
  usuarios = [
      {
          :cuil =>        "20258489749",
          :nombre =>      "Antonella Melisa",
          :apellido =>    "Lista",
          :email =>       "eaarached+0018@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "24/1/1992",
          :domicilio =>   "MARCONI 847 Piso:1 - ESQUINA : H. JONES",
          :partido =>     "TRELEW",
          :codigo =>      "9100",
          :provincia =>   "CHUBUT",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "37149165",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20288463213",
          :nombre =>      "Rodrigo Martin",
          :apellido =>    "Lista",
          :email =>       "eaarached+002@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "24/1/1992",
          :domicilio =>   "LA FRONDA 1681 Piso:10 Dpto:D",
          :partido =>     "CABA",
          :codigo =>      "1416",
          :provincia =>   "CABA",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "28846321",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "27271042669",
          :nombre =>      "Adriana Ivonne",
          :apellido =>    "Lista",
          :email =>       "eaarached+003@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "5/5/1998",
          :domicilio =>   "GRAL. VILLEGAS 708",
          :partido =>     "AVELLANEDA",
          :codigo =>      "1870",
          :provincia =>   "BUENOS AIRES",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "27271042669",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20172243259",
          :nombre =>      "Jorge Marcelo",
          :apellido =>    "Lista",
          :email =>       "eaarached+005@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "1/2/1961",
          :domicilio =>   "NAPOLES 2784",
          :partido =>     "HAEDO",
          :codigo =>      "1706",
          :provincia =>   "BUENOS AIRES",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "17224325",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20166809062",
          :nombre =>      "Claudio Alberto",
          :apellido =>    "Lista",
          :email =>       "eaarached+006@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "5/2/1956",
          :domicilio =>   "LARTIGAU 107",
          :partido =>     "WILDE",
          :codigo =>      "1875",
          :provincia =>   "BUENOS AIRES",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "16680906",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20364268913",
          :nombre =>      "Mariano Andres",
          :apellido =>    "Lista",
          :email =>       "eaarached+007@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "XXXXXXXX",
          :domicilio =>   "25 DE MAYO 386",
          :partido =>     "SAN SALVADOR",
          :codigo =>      "3218",
          :provincia =>   "ENTRE RIOS",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "36426891",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "23273573224",
          :nombre =>      "Maria Soledad",
          :apellido =>    "Lista",
          :email =>       "eaarached+008@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "5/9/1981",
          :domicilio =>   "JUJUY 182",
          :partido =>     "TORTUGUITAS",
          :codigo =>      "1667",
          :provincia =>   "BUENOS AIRES",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "27357322",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "27148533070",
          :nombre =>      "Leticia Emilse",
          :apellido =>    "Lista",
          :email =>       "eaarached+009@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "1/12/1936",
          :domicilio =>   "COPAHUE 130",
          :partido =>     "BAHIA BLANCA",
          :codigo =>      "8000",
          :provincia =>   "BUENOS AIRES",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "14853307",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "27230388569",
          :nombre =>      "Maria Cristina",
          :apellido =>    "Lista",
          :email =>       "eaarached+010@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "22/5/1974",
          :domicilio =>   "JUNIN 1909",
          :partido =>     "ROSARIO NORTE",
          :codigo =>      "2000",
          :provincia =>   "SANTA FE",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "23038856",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20284635885",
          :nombre =>      "Ariel Pablo",
          :apellido =>    "Lista",
          :email =>       "eaarached+011@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "19/10/1984",
          :domicilio =>   "MEXICO 1847",
          :partido =>     "CABA",
          :codigo =>      "1222",
          :provincia =>   "CABA",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "28463588",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "27038667616",
          :nombre =>      "Amelia Nora",
          :apellido =>    "Lista",
          :email =>       "eaarached+021@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "2/6/1961",
          :domicilio =>   "SUCRE ANTONIO MCAL. 2757 Piso:7 Dpto:A",
          :partido =>     "CABA",
          :codigo =>      "1428",
          :provincia =>   "CABA",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "11021983",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "27371491657",
          :nombre =>      "Antonella Melisa Lista",
          :apellido =>    " Doble Lista",
          :email =>       "eaarached+001@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "1/2/1980",
          :domicilio =>   "SUCRE ANTONIO MCAL. 2757 Piso:7 Dpto:A",
          :partido =>     "CABA",
          :codigo =>      "1428",
          :provincia =>   "CABA",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "11021983",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20110219831",
          :nombre =>      "Juan Domingo",
          :apellido =>    "Lista",
          :email =>       "eaarached+004@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "5/9/1931",
          :domicilio =>   "SUCRE ANTONIO MCAL. 2757 Piso:7 Dpto:A",
          :partido =>     "CABA",
          :codigo =>      "1428",
          :provincia =>   "CABA",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "11021983",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "23234020544",
          :nombre =>      "Gladys Noemi",
          :apellido =>    "Ajaya",
          :email =>       "eaarached+020@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "02/02/1988",
          :domicilio =>   "Remedios 123",
          :partido =>     "El Tunal",
          :codigo =>      "2000",
          :provincia =>   "Salta",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "23402054",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20052701024",
          :nombre =>      "Germán  Andares",
          :apellido =>    "Peralta",
          :email =>       "eaarached+030@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "01/12/1965",
          :domicilio =>   "Calle 1 1001",
          :partido =>     "La Plata",
          :codigo =>      "9000",
          :provincia =>   "Buenos Aires",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "5270102",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20249403467",
          :nombre =>      "Sebastian Roberto",
          :apellido =>    "Sermanoukian",
          :email =>       "eaarached+022@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "11/08/1945",
          :domicilio =>   "Superi 2345 5to 22",
          :partido =>     "San Vicente",
          :codigo =>      "6565",
          :provincia =>   "Buenos Aires",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "24940346",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20267047813",
          :nombre =>      "Nahuel Matias",
          :apellido =>    "Zurdosky",
          :email =>       "eaarached+023@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "22/04/1953",
          :domicilio =>   "Colombo 123",
          :partido =>     "Arroyo Aguiar",
          :codigo =>      "1024",
          :provincia =>   "Santa Fe",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "26704781",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20372995417",
          :nombre =>      "Natalia Florencia",
          :apellido =>    "Flores",
          :email =>       "eaarached+024@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "30/12/1968",
          :domicilio =>   "Cnatinflas 239 4to piso B",
          :partido =>     "Choele Choel",
          :codigo =>      "5698",
          :provincia =>   "Rio Negro",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "37299541",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "20253603144",
          :nombre =>      "Jorge Andres",
          :apellido =>    "Lobasso",
          :email =>       "eaarached+025@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "30/11/1933",
          :domicilio =>   "Gral. Benito Cnepa 123",
          :partido =>     "Laguna Escondida",
          :codigo =>      "2586",
          :provincia =>   "Tierra del Fuego",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "25360314",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "27033056562",
          :nombre =>      "Carla Mariana",
          :apellido =>    "Juvilo ",
          :email =>       "eaarached+028@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "22/09/1947",
          :domicilio =>   "Roberto Penelo 2340",
          :partido =>     "Azara",
          :codigo =>      "1550",
          :provincia =>   "Misiones",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "3305656",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      },
      {
          :cuil =>        "27388881548",
          :nombre =>      "Diana",
          :apellido =>    "Rosales",
          :email =>       "eaarached+029@gmail.com",
          :prefijo1 =>    "001",
          :telefono1 =>   "1137149165",
          :cumple =>      "08/08/1988",
          :domicilio =>   "Rivadavia 10556 4to C",
          :partido =>     "CABA",
          :codigo =>      "1400",
          :provincia =>   "CABA",
          :pais =>        "Argentina",
          :password =>    "modernizacion",
          :dni =>         "38888154",
          :prefijo2 =>    "001",
          :telefono2 =>   "1139129771"
      }


  ]
  go("https://qa-usuarios-turnos.argentina.gob.ar")
  esperar(1)
  #captura_de_pantalla("qa-usuarios-turnos")
  usuario = "sntagente@yopmail.com"
  password = "QAsnt2018"
  asd = capturar(:id,'usuario')
  esperar(1)
  asd.send_keys usuario
  asd.clear()
  asd.send_keys usuario
  cap = capturar(:id,'password')
  cap.send_keys password
  esperar(1)
  cap.clear()
  cap.send_keys password
  bot = capturar(:class,'btn-success')
  bot.click
  esperar(10)
  tod = capturar(:xpath,'/html/body/app-root/app-header/header/nav/div/div/nav/li[7]/a')
  tod.click
  primera
  ultima
  esperar(1)
  usuarios.each do |asa|
    solicitar_turno = capturar(:xpath,'/html/body/app-root/app-bienvenida/div/div/button')
    solicitar_turno.click
    paso = capturar(:xpath, '/html/body/app-root/app-categorias/div/div/div[2]/div/div[1]/app-tile/button')
    paso.click
    dar_alta = capturar(:xpath,'/html/body/app-root/app-tramites/div/div/div[2]/div/div[1]/app-tile/button')
    dar_alta.click
    continuar = capturar(:xpath,'/html/body/app-root/app-requisitos/div/div/div[3]/div[2]/button')
    continuar.click
    nombre = asa[:nombre]
    apellido = asa[:apellido]
    cuil = asa[:cuil]
    capnombre = capturar(:id,'nombre')
    capnombre.send_keys nombre
    capapellido = capturar(:id,'apellido')
    capapellido.send_keys apellido
    capcuil = capturar(:id,'cuil')
    capcuil.send_keys cuil
    confirmar = capturar(:xpath, '/html/body/app-root/app-datos-tramite/div/div/form/div[2]/div[2]/button')
    confirmar.click
    prioridad_no = capturar(:xpath,'/html/body/app-root/app-prioridad/div/div/div/button[2]')
    prioridad_no.click
    finalizar = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div/div/div/button[1]')
    finalizar.click
    puts "TURNOS CREADOS POR TOD: #{asa[:nombre].light_blue} #{asa[:apellido].light_blue} \t CUIL:#{asa[:cuil].light_blue}".bold
  end

end

Then /^Atender por ventanilla$/ do
  go("https://qa-usuarios-turnos.argentina.gob.ar")
  esperar(1)
  #captura_de_pantalla("qa-usuarios-turnos")
  usuario = "sntagente@yopmail.com"
  password = "QAsnt2018"
  asd = capturar(:id,'usuario')
  esperar(1)
  asd.send_keys usuario
  asd.clear()
  asd.send_keys usuario
  cap = capturar(:id,'password')
  cap.send_keys password
  esperar(1)
  cap.clear()
  cap.send_keys password
  bot = capturar(:class,'btn-success')
  bot.click
  #############
  titulo_seccion_inicial = "esta"
  titulo_inicial = capturar(:class,'titulo-seccion').text
  if titulo_inicial.include? titulo_seccion_inicial
    salir_de_ventanilla = capturar(:xpath,'/html/body/app-root/main/div/app-turnos-cola/h1/button')
    salir_de_ventanilla.click
  end
  box2 = capturar(:xpath,'/html/body/app-root/main/div/app-ventanilla/div/div/div/div[2]/div[1]/div/h1')
  box2.click
  esperar(3)
  llamar_siguiente_numero = capturar(:class, 'btn-primary')
  llamar_siguiente_numero.click
  esperar(3)
  titulo = capturar(:class,'titulo-seccion').text
  titulo_que_deberia_estar = "ventanilla"
  if titulo.include? titulo_que_deberia_estar
    #puts "NO HAY TURNO"
    puts "NO HAY TURNOS:".bold
  else
    #puts "HAY TURNO"
    wixle = titulo.include? titulo_que_deberia_estar
    usuarios = [
        {
            :cuil =>        "20258489749",
            :nombre =>      "Antonella Melisa",
            :apellido =>    "Lista",
            :email =>       "eaarached+0018@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "24/1/1992",
            :domicilio =>   "MARCONI 847 Piso:1 - ESQUINA : H. JONES",
            :partido =>     "TRELEW",
            :codigo =>      "9100",
            :provincia =>   "CHUBUT",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "37149165",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20288463213",
            :nombre =>      "Rodrigo Martin",
            :apellido =>    "Lista",
            :email =>       "eaarached+002@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "24/1/1992",
            :domicilio =>   "LA FRONDA 1681 Piso:10 Dpto:D",
            :partido =>     "CABA",
            :codigo =>      "1416",
            :provincia =>   "CABA",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "28846321",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "27271042669",
            :nombre =>      "Adriana Ivonne",
            :apellido =>    "Lista",
            :email =>       "eaarached+003@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "5/5/1998",
            :domicilio =>   "GRAL. VILLEGAS 708",
            :partido =>     "AVELLANEDA",
            :codigo =>      "1870",
            :provincia =>   "BUENOS AIRES",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "27271042669",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20172243259",
            :nombre =>      "Jorge Marcelo",
            :apellido =>    "Lista",
            :email =>       "eaarached+005@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "1/2/1961",
            :domicilio =>   "NAPOLES 2784",
            :partido =>     "HAEDO",
            :codigo =>      "1706",
            :provincia =>   "BUENOS AIRES",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "17224325",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20166809062",
            :nombre =>      "Claudio Alberto",
            :apellido =>    "Lista",
            :email =>       "eaarached+006@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "5/2/1956",
            :domicilio =>   "LARTIGAU 107",
            :partido =>     "WILDE",
            :codigo =>      "1875",
            :provincia =>   "BUENOS AIRES",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "16680906",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20364268913",
            :nombre =>      "Mariano Andres",
            :apellido =>    "Lista",
            :email =>       "eaarached+007@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "XXXXXXXX",
            :domicilio =>   "25 DE MAYO 386",
            :partido =>     "SAN SALVADOR",
            :codigo =>      "3218",
            :provincia =>   "ENTRE RIOS",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "36426891",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "23273573224",
            :nombre =>      "Maria Soledad",
            :apellido =>    "Lista",
            :email =>       "eaarached+008@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "5/9/1981",
            :domicilio =>   "JUJUY 182",
            :partido =>     "TORTUGUITAS",
            :codigo =>      "1667",
            :provincia =>   "BUENOS AIRES",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "27357322",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "27148533070",
            :nombre =>      "Leticia Emilse",
            :apellido =>    "Lista",
            :email =>       "eaarached+009@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "1/12/1936",
            :domicilio =>   "COPAHUE 130",
            :partido =>     "BAHIA BLANCA",
            :codigo =>      "8000",
            :provincia =>   "BUENOS AIRES",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "14853307",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "27230388569",
            :nombre =>      "Maria Cristina",
            :apellido =>    "Lista",
            :email =>       "eaarached+010@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "22/5/1974",
            :domicilio =>   "JUNIN 1909",
            :partido =>     "ROSARIO NORTE",
            :codigo =>      "2000",
            :provincia =>   "SANTA FE",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "23038856",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20284635885",
            :nombre =>      "Ariel Pablo",
            :apellido =>    "Lista",
            :email =>       "eaarached+011@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "19/10/1984",
            :domicilio =>   "MEXICO 1847",
            :partido =>     "CABA",
            :codigo =>      "1222",
            :provincia =>   "CABA",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "28463588",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "27038667616",
            :nombre =>      "Amelia Nora",
            :apellido =>    "Lista",
            :email =>       "eaarached+021@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "2/6/1961",
            :domicilio =>   "SUCRE ANTONIO MCAL. 2757 Piso:7 Dpto:A",
            :partido =>     "CABA",
            :codigo =>      "1428",
            :provincia =>   "CABA",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "11021983",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "27371491657",
            :nombre =>      "Antonella Melisa Lista",
            :apellido =>    " Doble Lista",
            :email =>       "eaarached+001@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "1/2/1980",
            :domicilio =>   "SUCRE ANTONIO MCAL. 2757 Piso:7 Dpto:A",
            :partido =>     "CABA",
            :codigo =>      "1428",
            :provincia =>   "CABA",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "11021983",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20110219831",
            :nombre =>      "Juan Domingo",
            :apellido =>    "Lista",
            :email =>       "eaarached+004@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "5/9/1931",
            :domicilio =>   "SUCRE ANTONIO MCAL. 2757 Piso:7 Dpto:A",
            :partido =>     "CABA",
            :codigo =>      "1428",
            :provincia =>   "CABA",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "11021983",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "23234020544",
            :nombre =>      "Gladys Noemi",
            :apellido =>    "Ajaya",
            :email =>       "eaarached+020@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "02/02/1988",
            :domicilio =>   "Remedios 123",
            :partido =>     "El Tunal",
            :codigo =>      "2000",
            :provincia =>   "Salta",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "23402054",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20052701024",
            :nombre =>      "Germán  Andares",
            :apellido =>    "Peralta",
            :email =>       "eaarached+030@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "01/12/1965",
            :domicilio =>   "Calle 1 1001",
            :partido =>     "La Plata",
            :codigo =>      "9000",
            :provincia =>   "Buenos Aires",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "5270102",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20249403467",
            :nombre =>      "Sebastian Roberto",
            :apellido =>    "Sermanoukian",
            :email =>       "eaarached+022@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "11/08/1945",
            :domicilio =>   "Superi 2345 5to 22",
            :partido =>     "San Vicente",
            :codigo =>      "6565",
            :provincia =>   "Buenos Aires",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "24940346",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20267047813",
            :nombre =>      "Nahuel Matias",
            :apellido =>    "Zurdosky",
            :email =>       "eaarached+023@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "22/04/1953",
            :domicilio =>   "Colombo 123",
            :partido =>     "Arroyo Aguiar",
            :codigo =>      "1024",
            :provincia =>   "Santa Fe",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "26704781",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20372995417",
            :nombre =>      "Natalia Florencia",
            :apellido =>    "Flores",
            :email =>       "eaarached+024@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "30/12/1968",
            :domicilio =>   "Cnatinflas 239 4to piso B",
            :partido =>     "Choele Choel",
            :codigo =>      "5698",
            :provincia =>   "Rio Negro",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "37299541",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "20253603144",
            :nombre =>      "Jorge Andres",
            :apellido =>    "Lobasso",
            :email =>       "eaarached+025@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "30/11/1933",
            :domicilio =>   "Gral. Benito Cnepa 123",
            :partido =>     "Laguna Escondida",
            :codigo =>      "2586",
            :provincia =>   "Tierra del Fuego",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "25360314",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "27033056562",
            :nombre =>      "Carla Mariana",
            :apellido =>    "Juvilo ",
            :email =>       "eaarached+028@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "22/09/1947",
            :domicilio =>   "Roberto Penelo 2340",
            :partido =>     "Azara",
            :codigo =>      "1550",
            :provincia =>   "Misiones",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "3305656",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        },
        {
            :cuil =>        "27388881548",
            :nombre =>      "Diana",
            :apellido =>    "Rosales",
            :email =>       "eaarached+029@gmail.com",
            :prefijo1 =>    "001",
            :telefono1 =>   "1137149165",
            :cumple =>      "08/08/1988",
            :domicilio =>   "Rivadavia 10556 4to C",
            :partido =>     "CABA",
            :codigo =>      "1400",
            :provincia =>   "CABA",
            :pais =>        "Argentina",
            :password =>    "modernizacion",
            :dni =>         "38888154",
            :prefijo2 =>    "001",
            :telefono2 =>   "1139129771"
        }


    ]
    x = 0
    while wixle == false
      terminado = capturar(:xpath, '/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[2]/div[1]/button[3]')
      terminado.click
      terminado_completo = capturar(:xpath, '/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[2]/div[1]/div[2]/button[1]')
      terminado_completo.click
      nombre = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[1]/div[2]/div/div[1]/p').text
      apellido = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[1]/div[2]/div/div[2]/p').text
      cuil = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[1]/div[2]/div/div[3]/p').text
      puts "SE ATENDIERON LOS TURNOS: #{nombre.light_blue} #{apellido.light_blue}  \t  CUIL:#{cuil.light_blue}".bold
      guardar = capturar(:xpath,'/html/body/app-root/main/div/app-siguiente-turno/app-edicion-turno-form/div/form/div/div[2]/div[2]/button')
      guardar.click
      esperar(1)
      llamar_siguiente_numero = capturar(:class, 'btn-primary')
      llamar_siguiente_numero.click
      esperar(3)
      titulo1 = capturar(:class,'titulo-seccion').text
      titulo1_que_deberia_estar = "ventanilla"
      wixle = titulo1.include? titulo1_que_deberia_estar
    end
  end
end