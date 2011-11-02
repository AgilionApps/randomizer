$:.unshift File.expand_path("../lib", __FILE__)
require "randomizer/version"

Gem::Specification.new do |s|
  s.name        = "randomizer"
  s.version     = Randomizer::VERSION
  s.authors     = ["Tristan O'Neil"]
  s.email       = ["tristan@agilionapps.com"]
  s.homepage    = "http://www.github.com/agilionapps/randomizer"
  s.summary     = %q{Randomly pick email addresses from MailChimp}
  s.description = %q{Command line based utility to randomly pick email addresses from MailChimp}
  s.executables = "randomizer"

  s.files = %x{ git ls-files }.split("\n").select { |d| d =~ %r{^(bin/|lib/)} }

  s.add_dependency "hominid"
end
