# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'refile_cache/version'

Gem::Specification.new do |spec|
  spec.name          = 'refile_cache'
  spec.version       = RefileCache::VERSION
  spec.authors       = ['Ceda']
  spec.email         = ['pleskac@gmail.com']

  spec.summary       = 'RefileCache'
  spec.description   = 'RefileCache - S3 file caching for Refile'
  spec.homepage      = 'http://github.com/Ceda/refile_cache'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'refile', '~> 0.6.2'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
end
