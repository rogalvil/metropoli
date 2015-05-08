# encoding: UTF-8

require 'rake'
require 'rdoc'
require 'rdoc/task'
require 'rake/testtask'

desc 'Run Metropoli unit tests.'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

desc 'Generate documentation for Metropoli'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Metropoli #{version}"
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "metropoli"
    gem.summary = %Q{City database engine for rails 3}
    gem.description = %Q{With this engine you can generate a flexible and unobstrusive city database engine that you can relate to your rails 3 models}
    gem.email = "adrian@innku.com"
    gem.homepage = "http://github.com/adriancuadros/metropoli"
    gem.authors = ["Adrian Cuadros"]
    gem.add_dependency('sinatra')
    gem.add_dependency "json"
    gem.add_development_dependency 'jeweler'
    gem.add_development_dependency 'shoulda'
    gem.add_development_dependency 'rails'
    gem.add_development_dependency 'sqlite3-ruby'
    gem.add_development_dependency 'factory_girl'
    gem.add_development_dependency 'debugger'
    gem.add_development_dependency 'turn'
    gem.add_development_dependency "minitest"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
