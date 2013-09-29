class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build
    @answer.save

    redirect_to @question
    
     
  end

  
  def destroy
  end
end


 #@question = current_user.questions.build(params[:question])

