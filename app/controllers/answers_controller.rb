class AnswersController < ApplicationController
  def create
      question = Question.find(params[:anwers][:question_id])
      Answer.create(answers_params)
      redirect_to question
  end

  private

  def answers_params
      params.require(:answer).permit(:question_id, :email, :body)
  end
end
