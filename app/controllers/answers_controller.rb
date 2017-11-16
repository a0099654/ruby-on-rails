class AnswersController < ApplicationController
  def create
      Answer.create(answers_params)
      redirect_to root_path
  end

  private

  def answers_params
      params.require(:answer).permit(:question_id, :email, :body)
  end
end
