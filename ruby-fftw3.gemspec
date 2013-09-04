# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gentooboontoo-ruby-fftw3"
  s.version = "0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Takeshi Horinouchi"]
  s.date = "2012-02-26"
  s.description = "Fast Fourier Transforms by using FFTW Ver.3"
  s.email = ["julien.sanchez@gmail.com"]
  s.homepage = "http://www.gfd-dennou.org/arch/ruby/products/ruby-fftw3/"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.6")
  s.rubygems_version = "2.0.3"
  s.summary = "Rubygems-compatible fork of the Ruby interface of the FFTW (ver 3) library"
  s.license = "BSD"

  s.files = Dir["doc/*",
                "test/*",
                "ChangeLog",
                "LICENSE.txt",
                "ext/na_fftw3.c"]

  s.extensions << "ext/extconf.rb"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<narray>, [">= 0"])
    else
      s.add_dependency(%q<narray>, [">= 0"])
    end
  else
    s.add_dependency(%q<narray>, [">= 0"])
  end
end

