class QuestionsController < ApplicationController
    def show
        @question = Question.find(params[:id])
        @answers = @question.answers.order(created_at: :desc)
    end

    def create
        Question.create(questions_params)
        redirect_to root_path
    end

    private

    def questions_params
        params.require(:question).permit(:email, :body)
    end
end

