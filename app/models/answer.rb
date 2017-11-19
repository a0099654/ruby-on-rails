class Answer < ApplicationRecord

    belongs_to :question

    def gravatar  
        "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
    end
end
