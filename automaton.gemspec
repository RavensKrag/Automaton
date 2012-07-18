require File.expand_path("../lib/automaton/version", __FILE__)

Gem::Specification.new do |s|
	s.name        = "automaton"
	s.version     = Automaton::VERSION
	s.date        = '2012-07-17'
	s.platform    = Gem::Platform::RUBY
	s.authors     = ["Raven"]
	s.email       = 'AvantFlux.Raven@gmail.com'
	s.homepage    = 'https://github.com/RavensKrag'
	
	s.summary     = "Rendering-library independent 2D animation library."
	s.description = <<EOS
	Manages a state machine to control different states of an animation,
	as well as transitions between those states.
EOS
	
	s.required_rubygems_version = ">= 1.3.6"
	
	# lol - required for validation
	#~ s.rubyforge_project         = "newgem"
	
	# If you have other dependencies, add them here
	# s.add_dependency "another", "~> 1.2"
	
	# If you need to check in files that aren't .rb files, add them here
	#~ s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
	s.files        = Dir["{lib}/**/*.rb", "bin/*", "{ext}/**/*.{c,h,rb}", "LICENSE", "*.md"]
	puts s.files
	
	s.require_path = 'lib'
	
	# If you have C extensions, uncomment this line
	#~ s.extensions = ['ext/automaton/extconf.rb']
	
	# If you need an executable, add it here
	# s.executables = ["newgem"]
end
