namespace :eddy do

  desc "Copy & run migrations; copy initializer."
  task :install, [] => :environment do
    Rake::Task["eddy_rails:install:migrations"].invoke
    Rake::Task["db:migrate"].invoke
  end

  # desc "Roll back & remove migrations; remove initializer."
  # task :uninstall, [] => :environment do
  # end

end
