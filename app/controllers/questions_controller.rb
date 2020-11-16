class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @coach_answer = coach_answer(params[:question])

  end
  
  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!" # || your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end
  
end
