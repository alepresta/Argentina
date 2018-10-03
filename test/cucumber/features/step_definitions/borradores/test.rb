Given /^en el primer paso$/ do
  go("https://qa-usuarios-turnos.argentina.gob.ar")
  fecha, hora = Time.now.strftime('%Y-%m-%d--%H-%M-%S').split("--")
  puts fecha
  puts hora
  wer= path_root_proyecto
  puts wer
  puts path_root_proyecto + "/Argentina/test/report/reporte.html"

end

When /^en el segundo paso$/ do

end

Then /^en el tercer paso$/ do

end