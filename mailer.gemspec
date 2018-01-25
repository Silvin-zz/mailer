$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mailer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mailer"
  s.version     = '0.0.1'
  s.authors     = ["Silvin"]
  s.email       = ["bravocado@gmail.com"]
  s.homepage    = "https://github.com/Silvin/mailer"
  s.summary     = "a test mailer plugin"
  s.description = "the first gem created"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
end
