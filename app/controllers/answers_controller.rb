class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(params[:answer])
    @answer.user = current_user

    
    @answer.save

    redirect_to @question
    
     
  end

  
  def destroy
  end
end


 #@question = current_user.questions.build(params[:question])

