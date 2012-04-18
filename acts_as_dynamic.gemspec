# Path patch
$:.unshift(Dir.pwd)
$:.unshift(Dir.pwd + "/lib")

# Version
require "acts_as_dynamic/version"

Gem::Specification.new do |s|

  # Information
  s.name = "acts_as_dynamic"
  s.version = ActsAsDynamic::VERSION::STRING

  # Description
  s.summary = "Use dynamic attributes in your classes"
  s.description = "Use dynamic attributes in your classes"

  # License
  s.license = "MIT"

  # Author
  s.author = "Juan Colacelli"
  s.email = "juancolacelli@gmail.com"
  s.homepage = "https://github.com/juancolacelli/acts_as_dynamic"

  # Include everything in the lib folder
  s.files = Dir["lib/**/*.rb"]

  # Dependencies
  s.add_dependency("activemodel")

end
