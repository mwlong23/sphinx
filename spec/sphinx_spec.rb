require('rspec')
require('sphinx')

describe(Riddle) do
  describe("correct_answer1?") do
    it("will return true if correct") do
      test_riddle = Riddle.new("dog", "asteroids", "3")
      expect(test_riddle.correct_answer1?()).to(eq(true))
    end
  end
  describe("correct_answer2?") do
    it("will return true if correct") do
      test_riddle = Riddle.new("dog", "asteroids", "3")
      expect(test_riddle.correct_answer2?()).to(eq(true))
    end
  end
  describe("correct_answer3?") do
    it("will return true if correct") do
      test_riddle = Riddle.new("dog", "asteroids", "3")
      expect(test_riddle.correct_answer3?()).to(eq(true))
    end
  end
end
