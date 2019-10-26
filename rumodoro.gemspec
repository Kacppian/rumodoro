# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "staccato"
  spec.version       = '0.1.0'
  spec.authors       = ["Kaushik", "Varun"]

  spec.summary       = "Cli for pomodoro cycle"
  spec.description   = "Cli for pomodoro cycle"
  spec.homepage      = "https://github.com/Kacppian/rumodoro"
  spec.license       = "MIT"

  spec.executables   = ["bin/pm"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "commander"
end
