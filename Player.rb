class Player
  attr_reader :name
  attr_accessor :lives
# initialize with player name
  def initialize(name)
    @name = name
    @lives = 3
  end

end