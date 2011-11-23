# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "quotemedia/version"

Gem::Specification.new do |s|
  s.name        = "quotemedia"
  s.version     = Quotemedia::VERSION
  s.authors     = ["Chenoa Siegenthaler"]
  s.email       = ["cowmanifestation@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Quotemedia api wrapper}
  s.description = %q{A thin wrapper to Quotemedia apis}

  s.rubyforge_project = "quotemedia"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
