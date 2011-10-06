# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "system_timer19/version"

Gem::Specification.new do |s|
  s.name        = "system-timer19"
  s.version     = System::Timer19::VERSION
  s.authors     = ["Joshua Lane"]
  s.email       = ["jlane@engineyard.com"]
  s.homepage    = ""
  s.summary     = %q{use timeout from SystemTimer in 1.8 or Kernel.timeout in 1.9}
  s.description = %q{ease migration off of SystemTimer}

  s.rubyforge_project = "system-timer19"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
