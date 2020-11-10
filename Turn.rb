class Turn
  attr_reader :number
# initialize with turn number
  def initialize
    @number = 1
  end
# update turns
  def update
    @number += 1
  end
# check even or odd to track players
  def even
    @number % 2 == 0
  end

end