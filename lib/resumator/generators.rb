module Resumator::Generators
  class Generator

    @@template_dir = File.dirname(__FILE__) + '../../../templates'

    # Generate a resume
    # @param resume [Hash]
    # @return [String] 
    def generate(resume)
      ""
    end

    class << self
      attr_reader :list
    end
    @list = []

    def self.inherited(klass)
      @list << klass.new
    end
  end

  def self.load_all
    Dir.glob(File.join(File.dirname(__FILE__), 'generators/*.rb')).map do |generator|
      require File.expand_path(generator)
    end
  end
end
