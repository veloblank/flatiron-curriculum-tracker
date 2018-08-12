require_relative './curriculum.rb'

class Lesson
  @@all = []

  attr_accessor :name, :completed, :viewed

  def initialize(name, completed, viewed)
    @name = name
    @completed = completed
    @viewed = viewed
    @@all << self
  end

  def lesson_builder
    new = Curriculum.new
    new.unit_builder
  end

end
