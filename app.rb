require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get('/') do
  erb(:input)
end

post('/output') do
  @answer1 = params.fetch("riddle1")
  @answer2 = params.fetch("riddle2")
  @answer3 = params.fetch("riddle3")
  user_answer = Riddle.new(@answer1, @answer2, @answer3)
  if user_answer.correct_answer1? && user_answer.correct_answer2? && user_answer.correct_answer3?
    @string_to_display = "Correct"
  else
    @string_to_display = "One or more of your answers is incorrect."
  end
end
