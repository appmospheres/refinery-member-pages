# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'refinery_member_pages/version'

Gem::Specification.new do |spec|
  spec.name          = 'refinery_member_pages'
  spec.version       = Refinery::MemberPages::VERSION
  spec.authors       = ['eugen neagoe']
  spec.email         = ['eugen.neagoe@appmospheres.com']
  spec.description   = %q{Simple refinery plugin for members-only pages}
  spec.summary       = %q{Simple refinery plugin for members-only pages}
  spec.homepage      = 'https://github.com/appmospheres/refinery_member_pages'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 5.0.0'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake'
end
