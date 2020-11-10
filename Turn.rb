class Turn
  attr_reader :number
  # attr_accessor :lives
# initialize with player name
  def initialize
    @number = 1
    # @lives = 3
  end
# update turns
  def update
    @number += 1
  end


end