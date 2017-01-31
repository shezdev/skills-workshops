# coding: utf-8

require 'delegate'

# Understands how to present a random, happy emoji
class RandomHappyEmoji < SimpleDelegator
  #  HAPPY_EMOJI = [":D"] # change from :D to :)
  HAPPY_EMOJI = [":)"]

  def initialize
  	p HAPPY_EMOJI.sample
    super(HAPPY_EMOJI.sample)
  end
end
