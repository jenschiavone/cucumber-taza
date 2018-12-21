require 'taza'
require 'os'
require 'pry'


ENV['TAZA_ENV'] ||= 'isolation'
ENV['BROWSER'] ||= 'firefox'

PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '../..'))
Dir["#{PROJECT_ROOT}/lib/sites/*.rb"].each { |file| require file }

Dir["#{PROJECT_ROOT}/features/support/monkey_patches/*.rb"].each { |file| require file }

if OS.mac?
  ENV['PATH'] = File.join(PROJECT_ROOT, 'tools', 'chromedriver', 'mac') + ':' + ENV['PATH']
  ENV['PATH'] = File.join(PROJECT_ROOT, 'tools', 'geckodriver', 'mac') + ':' + ENV['PATH']
elsif OS.linux?
  ENV['PATH'] = File.join(PROJECT_ROOT, 'tools', 'chromedriver', 'linux64') + ':' + ENV['PATH']
  ENV['PATH'] = File.join(PROJECT_ROOT, 'tools', 'geckodriver', 'linux64') + ':' + ENV['PATH']
end