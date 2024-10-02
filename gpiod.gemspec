require_relative 'lib/gpiod/version'

Gem::Specification.new do |s|
  s.name        = 'gpiod'
  s.version     = GPIOD::VERSION
  s.licenses    = ['MIT']
  s.summary     = "Use Linux SBC GPIO in Ruby"
  s.description = "This gem provides Ruby bindings to the Linux gpiod C library"

  s.authors     = ["vickash"]
  s.email       = 'mail@vickash.com'
  s.files       =  Dir['**/*'].reject { |f| f.match /.gem\z/}
  s.homepage    = "https://github.com/denko-rb/gpiod"
  s.metadata    = { "source_code_uri" => "https://github.com/denko-rb/gpiod" }

  # libgpio C extension
  s.extensions = %w[ext/gpiod/extconf.rb]
end
