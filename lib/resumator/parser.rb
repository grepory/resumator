require 'yaml'

module Resumator
  class Parser
  # Parse a data file and return an object structure
  def parse(file)
    YAML.load(file)
  end
end
