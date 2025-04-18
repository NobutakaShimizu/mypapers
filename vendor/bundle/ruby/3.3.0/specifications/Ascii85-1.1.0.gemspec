# -*- encoding: utf-8 -*-
# stub: Ascii85 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "Ascii85".freeze
  s.version = "1.1.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Johannes Holzfu\u00DF".freeze]
  s.date = "2020-11-12"
  s.description = "Ascii85 provides methods to encode/decode Adobe's binary-to-text encoding of the same name.".freeze
  s.email = "johannes@holzfuss.name".freeze
  s.executables = ["ascii85".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze, "bin/ascii85".freeze]
  s.homepage = "https://github.com/DataWraith/ascii85gem/".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Ascii85 encoder/decoder".freeze

  s.installed_by_version = "3.5.23".freeze

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, [">= 1.0.0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, [">= 2.6.0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0.9.2".freeze])
end
