# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arduino_strip/version'

Gem::Specification.new do |spec|
  spec.name          = 'arduino_strip'
  spec.version       = ArduinoStrip::VERSION
  spec.authors       = ['Gerrit Visscher']
  spec.email         = ['gerrit@visscher.de']
  spec.summary       = %q{Controls an LED strip connected to an Arduino}
  spec.description   = 'This gem allows to you set colors on a LED strip connected to an Arduino. ' +
                       'It communicates via USB with the Arduino and allows you to set the color of each LED. ' +
                       'It is probably not fast enough for animations.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
