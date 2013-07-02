Gem::Specification do |gem|
  gem.name = 'Resumator'
  gem.version = '0.0.1'
  gem.date = '2013-06-23'
  gem.summary = 'Resumator'
  gem.description = 'Building your resumes just got easier.'
  gem.authors = ['Greg Poirier']
  gem.email = ['grep@binary-snobbery.com']
  gem.files = [
    Dir.glob('**/*.rb', File.dirname(__FILE__)),
    'bin/resumator',
    'templates/markdown.erb'
  ]
  gem.homepage = 'http://github.com/grepory/resumator'
  gem.executables << 'resumator'
end
