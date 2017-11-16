class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def gravatar
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end
end
