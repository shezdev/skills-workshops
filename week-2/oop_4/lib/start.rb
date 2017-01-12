module Start

  def initialize(name, power)
    @name = name
    @power = power
  end

  def use_power
    p "#{ @name } is #{ @power }"
  end
end
