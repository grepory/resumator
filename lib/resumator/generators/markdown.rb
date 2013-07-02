require 'erb'

module Resumator::Generators
  class Markdown < Generator
    def generate(resume)
      b = binding
      name = resume['name']
      experience = resume['experience']
      objective = resume['objective']
      renderer = ERB.new(File.read(File.expand_path("markdown.erb", @@template_dir)))
      renderer.result(b)
    end
  end
end
