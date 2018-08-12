require_relative './parser.rb'
class Unit
  attr_accessor :name, :completed?, :slug

  def intialize(name, completed, slug)
    @name = name
    @completed = completed
    @slug = slug
  end

  def unit_builder
    curriculum = Parser.new
    units = curriculum.flatten
    units.each do |u|
      unit_name = u[:title]
      complete = u[:complete]
      slug = u[:slug]
      @units.push({name: unit_name, completed: complete, slug: slug})
    end
    self
  end


end
