$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "delayed_mailhopper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "delayed_mailhopper"
  s.version     = DelayedMailhopper::VERSION
  s.authors     = ["Dan Gebhardt"]
  s.email       = ["support@cerebris.com"]
  s.homepage    = "https://github.com/cerebris/delayed_mailhopper"
  s.summary     = "A simple solution that uses ActiveRecord and DelayedJob to queue, deliver and archive emails in Rails apps."
  s.description = "DelayedMailhopper extends Mailhopper to deliver emails asynchronously with DelayedJob."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "mailhopper", "~> 0.0.1"
  s.add_dependency "delayed_job"

  s.add_development_dependency "sqlite3", ">= 1.3.4"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "delayed_job_active_record"
end
