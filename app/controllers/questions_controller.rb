class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = params['answer']

    if @answer.downcase == 'I am going to work'.downcase
      @coach_resp = 'Great!'
    elsif @answer.last == '?'
      @coach_resp = 'Silly question, get dressed and go to work!'
    else
      @coach_resp = 'I don\'t care, get dressed and go to work!'
    end
  end
end
