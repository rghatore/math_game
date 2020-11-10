class Question
# initialize with nothing
  def initialize
    @random1
    @random2
    @answer
  end
# prompt to pose a question and get player response
  def prompt
    @random1 = rand(1...20)
    @random2 = rand(1...20)
    puts "What does #{@random1} plus #{@random2} equal?"
    @answer = gets.chomp
    validate
  end
# compare answer
  def validate
    puts "Answer = #{@answer.class}"
    # puts "Truthy = #{@random1 + @random2}"
    puts "Truthy = #{@random1.class}"
    if @answer.to_i == (@random1 + @random2)
      puts "works"
    end
    # puts "You're correct!" if @answer == (@random1 + @random2)
    # puts "Oops, that is incorrect!" if @answer != @random1 + @random2
  end

end