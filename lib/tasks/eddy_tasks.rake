# require "rails/generators"

namespace :eddy do

  desc "Copy & run migrations; copy initializer."
  task :install, [] => :environment do
    puts("Copying migrations")
    Rake::Task["eddy_rails:install:migrations"].invoke
    puts("Running migrations")
    Rake::Task["db:migrate"].invoke
    # https://stackoverflow.com/questions/4081478/how-to-invoke-generators-from-code
    # https://stackoverflow.com/questions/10053891/can-i-run-a-rake-task-inside-a-generator
    # Rails::Generators.invoke("eddy:initializer")
  end

  # desc "Roll back & remove migrations; remove initializer."
  # task :uninstall, [] => :environment do
  # end

end
