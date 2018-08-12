require 'pry'
require_relative './parser.rb'

class Curriculum
  attr_accessor :units, :modules

  def initialize
    @units = []
    @modules = []
  end

  def unit_builder
    units = parser.flatten[1]
    units.each do |u|
      unit_name = u[:title]
      complete = u[:complete]
      slug = u[:slug]
      @units.push({name: unit_name, completed: complete, slug: slug})
    end
    self
  end



  def parser
    this_hash = {Parser.new}
  end
end
