require_relative "fighting.rb"
require_relative "villain"
require_relative "start.rb"

class Superhero
  include Start
  include Fighting

end

# INTERFACE
pikachu = Superhero.new("Pikachu", "real cute :3")
pikachu.use_power # => "Pikachu is real cute :3"

thor = Superhero.new("Thor", "swingin' Mjolnir")
thor.use_power # => "Thor is swingin' Mjolnir"

the_shoveler = Superhero.new("The Shoveler", "shovelling faster than any man")
the_shoveler.use_power # => "The Shoveler is shovelling faster than any man"

the_joker = Villain.new("The Joker", "creepy")
thor.fight the_joker
the_joker.fight thor
