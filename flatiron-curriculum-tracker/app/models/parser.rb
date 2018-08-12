require 'open-uri'
require 'pry'
require 'json'

class Parser
  attr_accessor :source

  def initialize
    source = File.read(File.dirname(__FILE__) + '/curriculum-source.json')
    @source = JSON.parse(source)
  end

  def self.regexr(source)

  end
binding.pry

end
