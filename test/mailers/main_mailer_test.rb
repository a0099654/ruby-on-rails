require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do

    #Create a question and answer sample
    question = Question.create email:'author@gmail.com', body:'this is a question'
    answer = Answer.create email:'authorAnswer@gmail.com', body:'this is an answer'

    #Associate answer to the question by appending it
    question.answers << answer

    mail = MainMailer.notify_question_author(answer)
    assert_equal "New answer", mail.subject

    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    
    assert_match answer.body, mail.body.encoded
  end

end
