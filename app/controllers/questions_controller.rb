class QuestionsController < ApplicationController

  def index

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
      # nothing, yet
    end
  end
end
