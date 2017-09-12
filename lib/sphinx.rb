class Riddle
  attr_accessor :answer1, :answer2, :answer3
  attr_reader :correct_answer1, :correct_answer2, :correct_answer3
  def initialize(answer1, answer2, answer3)
    @answer1 = answer1.downcase
    @answer2 = answer2.downcase
    @answer3 = answer3.downcase
    @correct_answer1 = "dog"
    @correct_answer2 = "asteroids"
    @correct_answer3 = "3"
  end

  def correct_answer1?
    @answer1 == @correct_answer1
  end
  def correct_answer2?
    @answer2 == @correct_answer2
  end
  def correct_answer3?
    @answer3 == @correct_answer3
  end
end
