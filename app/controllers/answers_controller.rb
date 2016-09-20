class AnswersController < ApplicationController
  before_filter :authorize

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.user_id = current_user.id
    @answer.question_id = @question.id
    if @answer.save
      redirect_to question_path(@question)
    else
      @errors = @question.errors.full_messages
      render 'new', status: 422
    end

  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end
end
