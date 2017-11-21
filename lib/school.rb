# code here!
class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade]= [name]
    end
  end

  def grade(grade)
    @roster.map { |g, s| s if g == grade }.compact.flatten
  end

  def sort
    @roster.each { |g, s| s.sort! }
  end
end
