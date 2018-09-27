class Set < Thor
  include Thor::Actions

  no_tasks do
    def copy_environment(new_environment)
      run("cp features/support/envs/env.rb.#{new_environment} features/support/env.rb")
    end
  end

  desc "headless", "Usar Chrome sin cabeza con Watir"
  def headless
    puts "Ejecutar cukes con Headless Chrome Selenium"
    copy_environment("headless")
  end

  desc "chrome", "Ejecutar cukes con Chrome Selenium"
  def chrome
    puts "Run cukes with Chrome Selenium"
    copy_environment("chrome")
  end

  desc "firefox", "Ejecutar cukes con Firefox Selenium"
  def firefox
    puts "Run cukes with Firefox Selenium"
    copy_environment("firefox")
  end

  desc "safari", "ejecutar cukes con Safari Selenium"
  def safari
    puts "Run cukes with Safari Selenium"
    copy_environment("safari")
  end

  desc "edit", "debuguear cukes con Chrome Selenium"
  def edit
    puts "debug-edit cukes con Chrome Selenium"
    copy_environment("edit")
  end
end