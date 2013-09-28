class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answer = @question.answers.build(params[:answer])
    
  end

  def new
      @question = Question.new
        if ! user_signed_in?
           redirect_to new_user_registration_path     

        end

  end

  def edit
  end

  def create
    @question = current_user.questions.build(params[:question])


    if @question.save
      redirect_to @question
    else
      render :action => new
    end
  end

  def search
  end


end
