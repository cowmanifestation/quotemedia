# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "quotemedia/version"

Gem::Specification.new do |s|
  s.name        = "quotemedia"
  s.version     = QuoteMedia::VERSION
  s.authors     = ["Chenoa Siegenthaler"]
  s.email       = ["cowmanifestation@gmail.com"]
  s.homepage    = "https://github.com/cowmanifestation/quotemedia"
  s.summary     = %q{Quotemedia api wrapper}
  s.description = %q{A thin wrapper to Quotemedia apis}

  s.rubyforge_project = "quotemedia"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('rake', '~> 0.9.2.2')
  s.add_development_dependency('rspec', '~> 2.5.0')
end
