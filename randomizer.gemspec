$:.push File.expand_path("../lib", __FILE__)
require "randomizer/version"

Gem::Specification.new do |s|
  s.name        = "randomizer"
  s.version     = Randomizer::VERSION
  s.authors     = ["Tristan O'Neil"]
  s.email       = ["tristan@agilionapps.com"]
  s.homepage    = "http://www.github.com/agilionapps/randomizer"
  s.summary     = %q{Command line based utility to randomly pick email addresses from MailChimp}
  s.description = %q{Randomly pick email addresses from MailChimp}

  s.rubyforge_project = "randomizer"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "httparty"
end
