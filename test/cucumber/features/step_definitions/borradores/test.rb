Given /^en el primer paso$/ do
  go("https://qa-usuarios-turnos.argentina.gob.ar")

  wer= path_root_proyecto
  puts wer
  puts path_root_proyecto + "/Argentina/test/report/reporte.html"

end

When /^en el segundo paso$/ do

end

Then /^en el tercer paso$/ do

end