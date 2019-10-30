$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "feedback_gem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "feedback_gem"
  spec.version     = FeedbackGem::VERSION
  spec.authors     = ["geethatulasi-nyros"]
  spec.email       = ["geethatulasi.nyros@gmail.com"]
  spec.homepage    = "https://rubygems.org"
  spec.summary     = "Summary of FeedbackGem."
  spec.description = "Description of FeedbackGem."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2"

  # spec.add_dependency "font-awesome-rails",'~>4.7'
  # spec.add_dependency "bootstrap",'4.3'
  spec.add_development_dependency "sqlite3","~>1.0"
  spec.add_development_dependency 'jquery-rails', '~> 4.3'
end
