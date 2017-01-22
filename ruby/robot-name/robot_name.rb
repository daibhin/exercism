module BookKeeping
  VERSION = 2
end

class Robot
  @@names = []
  attr_reader :name

  def initialize
    reset
  end

  def reset
    @@names.delete(@name)
    generate_name
    @@names.include?(name) ? reset : (@@names << name)
  end

  def generate_name
    letters = 2.times.map { (65 + rand(26)).chr }.join
    numbers = 3.times.map { rand(9) }.join
    @name = letters + numbers
  end
end
