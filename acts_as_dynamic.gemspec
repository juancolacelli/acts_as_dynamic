$:.push File.expand_path("../lib", __FILE__)
require "acts_as_dynamic/version"

Gem::Specification.new do |s|
  s.name = "acts_as_dynamic"
  s.version = ActsAsDynamic::VERSION::STRING

  s.summary = "Use dynamic attributes in your classes"
  s.description = "Use dynamic attributes in your classes"

  s.license = "MIT"

  s.author = "Juan Colacelli"
  s.email = "juancolacelli@gmail.com"
  s.homepage = "https://github.com/juancolacelli/acts_as_dynamic"

  # Include everything in the lib folder
  s.files = Dir["lib/acts_as_dynamic.rb"]
end
