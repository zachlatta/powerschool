lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'powerschool/version'

Gem::Specification.new do |s|
  s.authors  = ['Zach Latta', 'Ethan Rooke']
  s.email    = 'zchlatta@gmail.com'
  s.homepage = 'http://rubygems.org/gems/powerschool'

  s.name        = 'powerschool'
  s.version     = Powerschool::VERSION
  s.date        = '2013-06-02'
  s.summary     = 'Access Powerschool with Ruby.'
  s.description = s.summary

  s.license     = 'MIT'
  s.add_development_dependency 'bundler', '~> 1.0'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f|
    File.basename(f)
  }
  s.require_paths = ['lib']
end

