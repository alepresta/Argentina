cucumber_features = [
    {:fichero => "reporte.html" ,                       :tag => "reporte" ,                       :formato => "html",  :plataforma => "QA"},
    {:fichero => "reporte.json" ,                       :tag => "reporte" ,                       :formato => "json",  :plataforma => "QA"},
    {:fichero => "compartir.html" ,                     :tag => "compartir" ,                     :formato => "html",  :plataforma => "Argentina"},
    {:fichero => "compartir.json" ,                     :tag => "compartir" ,                     :formato => "json",  :plataforma => "Argentina"},
    {:fichero => "formularios.html" ,                   :tag => "formularios" ,                   :formato => "html",  :plataforma => "Argentina"},
    {:fichero => "formularios.json" ,                   :tag => "formularios" ,                   :formato => "json",  :plataforma => "Argentina"},
    {:fichero => "home.html" ,                          :tag => "home" ,                          :formato => "html",  :plataforma => "Argentina"},
    {:fichero => "home.json" ,                          :tag => "home" ,                          :formato => "json",  :plataforma => "Argentina"},
    {:fichero => "listado_ordenado.html" ,              :tag => "listado_ordenado" ,              :formato => "html",  :plataforma => "Argentina"},
    {:fichero => "listado_ordenado.json" ,              :tag => "listado_ordenado" ,              :formato => "json",  :plataforma => "Argentina"},
    {:fichero => "login_redes_sociales.html" ,          :tag => "login_redes_sociales" ,          :formato => "html",  :plataforma => "Argentina"},
    {:fichero => "login_redes_sociales.json" ,          :tag => "login_redes_sociales" ,          :formato => "json",  :plataforma => "Argentina"},
    {:fichero => "mas_visitados.html" ,                 :tag => "mas_visitados" ,                 :formato => "html",  :plataforma => "Argentina"},
    {:fichero => "mas_visitados.json" ,                 :tag => "mas_visitados",                  :formato => "json",  :plataforma => "Argentina"},
    {:fichero => "organismos.html" ,                    :tag => "organismos" ,                    :formato => "html",  :plataforma => "Argentina"},
    {:fichero => "organismos.json" ,                    :tag => "organismos" ,                    :formato => "json",  :plataforma => "Argentina"},
    {:fichero => "sube.html" ,                          :tag => "sube" ,                          :formato => "html",  :plataforma => "Argentina"},
    {:fichero => "sube.json" ,                          :tag => "sube" ,                          :formato => "json",  :plataforma => "Argentina"},
    {:fichero => "test.html" ,                          :tag => "test" ,                          :formato => "html",  :plataforma => "QA"},
    {:fichero => "test.json" ,                          :tag => "test" ,                          :formato => "json",  :plataforma => "QA"},
    {:fichero => "turnos.html" ,                        :tag => "turnos" ,                        :formato => "html",  :plataforma => "SNT"},
    {:fichero => "turnos.json" ,                        :tag => "turnos" ,                        :formato => "json",  :plataforma => "SNT"},
    {:fichero => "turnos_recepcionar.html" ,            :tag => "turnos_recepcionar" ,            :formato => "html",  :plataforma => "SNT"},
    {:fichero => "turnos_recepcionar.json" ,            :tag => "turnos_recepcionar" ,            :formato => "json",  :plataforma => "SNT"},
    {:fichero => "turnos_sacar.html" ,                  :tag => "turnos_sacar" ,                  :formato => "html",  :plataforma => "SNT"},
    {:fichero => "turnos_sacar.json" ,                  :tag => "turnos_sacar" ,                  :formato => "json",  :plataforma => "SNT"},
    {:fichero => "turnos_sacar_multiples.html" ,        :tag => "turnos_sacar_multiples" ,        :formato => "html",  :plataforma => "SNT"},
    {:fichero => "turnos_sacar_multiples.json" ,        :tag => "turnos_sacar_multiples" ,        :formato => "json",  :plataforma => "SNT"},
    {:fichero => "turnos_sacar_multiples_tod.html" ,    :tag => "turnos_sacar_multiples_tod" ,    :formato => "html",  :plataforma => "SNT"},
    {:fichero => "turnos_sacar_multiples_tod.json" ,    :tag => "turnos_sacar_multiples_tod",     :formato => "json",  :plataforma => "SNT"},
]


Before do
  # @cukehub_api_key = "c1ty7uj72StwdqLGWKQZRjd8"
  # @domain = "http://cukehub.com"
  # puts @browser.capabilities.browser_name + " " + @browser.capabilities.version
end

at_exit do
  cucumber_features.each do |caso|
    fecha, hora = Time.now.strftime('%Y-%m-%d--%H-%M-%S').split("--")
    fichero = caso[:fichero]
    tag = caso[:tag]
    formato = caso[:formato]
    plataforma = caso[:plataforma]
    if File.exist? "#{path_root_proyecto}/Argentina/test/report/constructor_de_reportes/#{fichero}"
      if formato == "html"
        html_content = IO.read("#{path_root_proyecto}/Argentina/test/report/constructor_de_reportes/#{fichero}")
        html_content.gsub!("<h1>Cucumber Features</h1>","<h1><span>Caso de Prueba:</span> (#{tag}) <br>Realizado el día: #{fecha} a las: #{hora}</br></h1>")
        nombre_del_archivo = "#{plataforma}_#{tag}"
        path_pages = "#{path_root_proyecto}/Argentina/app/views/pages/#{nombre_del_archivo}"
        IO.write("#{path_pages}",html_content)
        if html_content.include? 'step failed'
          estado_texto = "  ლ(ಠ益ಠლ) ERROR"
          estado = true
          if html_content.include? 'passed'
            estado_texto = " \\(• ◡ •)/ Sin Errores"
            estado = false
          else
            estado_texto = "  ⊙﹏⊙ Inestable"
            estado = true
          end
        end
        pegar   = "<h1>Ejecuciones de pruebas</h1>
                  QA231425267"
        pegar_1 = "<p><%= link_to \"#{nombre_del_archivo}\", page_path(\"#{nombre_del_archivo}\") %><strong> #{estado} ......... #{estado_texto}</strong></p>"
        html_index = IO.read("#{path_root_proyecto}/Argentina/app/views/welcome/index.html.erb")
        html_index.gsub!("<h1>Ejecuciones de pruebas</h1>","#{pegar}")
        html_index_nuevo = "#{path_root_proyecto}/Argentina/app/views/welcome/index.html.erb"
        IO.write("#{html_index_nuevo}",html_index)
        html_index.gsub!("QA231425267","#{pegar_1}")
        IO.write("#{html_index_nuevo}",html_index)
        File.delete("#{path_root_proyecto}/Argentina/test/report/constructor_de_reportes/#{fichero}")
      else
        nombre_del_archivo = "#{plataforma}_#{tag}_#{fecha}_#{hora}.#{formato}"
        File.rename "#{path_root_proyecto}/Argentina/test/report/constructor_de_reportes/#{fichero}", "#{path_root_proyecto}/Argentina/test/report/json_reportes/#{nombre_del_archivo}"
      end
    end
  end
end
