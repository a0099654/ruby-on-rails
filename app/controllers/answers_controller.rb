class AnswersController < ApplicationController

  def create
      question = Question.find(params[:answer][:question_id])
      answer = question.answers.create(answers_params)

      MainMailer.notify_question_author(answer).deliver_now
      
      session[:current_user_email] = answers_params[:email]
      redirect_to question
  end

  private

  def answers_params
      params.require(:answer).permit(:email, :body)
  end
end
