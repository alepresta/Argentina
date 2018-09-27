
Before do
  # @cukehub_api_key = "c1ty7uj72StwdqLGWKQZRjd8"
  # @domain = "http://cukehub.com"
  # puts @browser.capabilities.browser_name + " " + @browser.capabilities.version
end

at_exit do
  casos_prueba = [
      {:reporte => "reporte.html" ,    :report_name => "reporte" , :formato => "html"},
      {:reporte => "reporte.json" ,    :report_name => "reporte" , :formato => "json"},
      {:reporte => "compartir.html" ,    :report_name => "compartir" , :formato => "html"},
      {:reporte => "compartir.json" ,    :report_name => "compartir" , :formato => "json"},
      {:reporte => "formularios.html" ,    :report_name => "formularios" , :formato => "html"},
      {:reporte => "formularios.json" ,    :report_name => "formularios" , :formato => "json"},
      {:reporte => "home.html" ,    :report_name => "home" , :formato => "html"},
      {:reporte => "home.json" ,    :report_name => "home" , :formato => "json"},
      {:reporte => "listado_ordenado.html" ,    :report_name => "listado_ordenado" , :formato => "html"},
      {:reporte => "listado_ordenado.json" ,    :report_name => "listado_ordenado" , :formato => "json"},
      {:reporte => "login_redes_sociales.html" ,    :report_name => "login_redes_sociales" , :formato => "html"},
      {:reporte => "login_redes_sociales.json" ,    :report_name => "login_redes_sociales" , :formato => "json"},
      {:reporte => "mas_visitados.html" ,    :report_name => "mas_visitados" , :formato => "html"},
      {:reporte => "mas_visitados.json" ,    :report_name => "mas_visitados", :formato => "json" },
      {:reporte => "organismos.html" ,    :report_name => "organismos" , :formato => "html"},
      {:reporte => "organismos.json" ,    :report_name => "organismos" , :formato => "json"},
      {:reporte => "sube.html" ,    :report_name => "sube" , :formato => "html"},
      {:reporte => "sube.json" ,    :report_name => "sube" , :formato => "json"},
      {:reporte => "test.html" ,    :report_name => "test" , :formato => "html"},
      {:reporte => "test.json" ,    :report_name => "test" , :formato => "json"},
      {:reporte => "turnos.html" ,    :report_name => "turnos" , :formato => "html"},
      {:reporte => "turnos.json" ,    :report_name => "turnos" , :formato => "json"},
      {:reporte => "turnos_recepcionar.html" ,    :report_name => "turnos_recepcionar" , :formato => "html"},
      {:reporte => "turnos_recepcionar.json" ,    :report_name => "turnos_recepcionar" , :formato => "json"},
      {:reporte => "turnos_sacar.html" ,    :report_name => "turnos_sacar" , :formato => "html"},
      {:reporte => "turnos_sacar.json" ,    :report_name => "turnos_sacar" , :formato => "json"},
      {:reporte => "turnos_sacar_multiples.html" ,    :report_name => "turnos_sacar_multiples" , :formato => "html"},
      {:reporte => "turnos_sacar_multiples.json" ,    :report_name => "turnos_sacar_multiples" , :formato => "json"},
      {:reporte => "turnos_sacar_multiples_tod.html" ,    :report_name => "turnos_sacar_multiples_tod" , :formato => "html"},
      {:reporte => "turnos_sacar_multiples_tod.json" ,    :report_name => "turnos_sacar_multiples_tod", :formato => "json" }
  ]
  casos_prueba.each do |caso|
    fecha, hora = Time.now.strftime('%Y-%m-%d--%H-%M-%S').split("--")
    reporte = caso[:reporte]
    report_name = caso[:report_name]
    formato = caso[:formato]
    #path_root_proyecto1 = "/var/lib/jenkins/workspace"
    if File.exist? "#{path_root_proyecto}/Argentina/test/report/#{report_name}/#{reporte}"
      html_content = IO.read("#{path_root_proyecto}/Argentina/test/report/#{report_name}/#{reporte}")
      html_content.gsub!("<h1>Cucumber Features</h1>","<h1><span>Caso de Prueba:</span> (#{report_name}) <br>Realizado el día: #{fecha} a las: #{hora}</br></h1>")
      nombre_del_archivo = "#{report_name}_#{fecha}-#{hora}.#{formato}"
      html_content_nuevo = "#{path_root_proyecto}/Argentina/app/views/pages/#{nombre_del_archivo}"
      #puts html_content
      if html_content.include? 'step failed'
        estado = "  ლ(ಠ益ಠლ) ERROR"
      else
        estado = " \\(• ◡ •)/ Sin Errores"
      end
      IO.write("#{html_content_nuevo}",html_content)
      # --------------------------------------------------------------------------------------
      pegar = "<h1>Ejecuciones de pruebas</h1></br>
      <p><%= link_to \"#{nombre_del_archivo}\", page_path(\"#{nombre_del_archivo}\") %><strong> \"#{estado}\"</strong></p>"
      html_index = IO.read("#{path_root_proyecto}/Argentina/app/views/welcome/index.html.erb")
      html_index.gsub!("<h1>Ejecuciones de pruebas</h1>","#{pegar}")
      html_index_nuevo = "#{path_root_proyecto}/Argentina/app/views/welcome/index.html.erb"
      IO.write("#{html_index_nuevo}",html_index)
      File.delete("#{path_root_proyecto}/Argentina/test/report/#{report_name}/#{reporte}")
    end
  end
end
