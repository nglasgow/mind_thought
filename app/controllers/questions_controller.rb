class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      flash[:novice] = "Question has been created."
      redirect_to @question
    else
      flash[:alert] = "Question has not been created."
      render :action => "new"
    end
  end
end
