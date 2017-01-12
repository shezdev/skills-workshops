require_relative "fighting.rb"
require_relative "start.rb"

class Villain
  include Start
  include Fighting

  def use_power
    super << "villainously!"
  end

end


# INTERFACE
#
 the_joker = Villain.new("The Joker", "creepy")
the_joker.use_power # => "The is Joker is creepy, villainously!"
