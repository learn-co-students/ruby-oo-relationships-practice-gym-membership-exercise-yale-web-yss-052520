class Gym
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def speak
    "hello!"
  end
end
