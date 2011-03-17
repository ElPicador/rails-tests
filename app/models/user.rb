class User < ActiveRecord::Base

  has_many :posts
  has_many :comments

  before_create :set_email_if_empty
  def set_email_if_empty
    self.email = "#{self.name}@me.com" if self.email.empty?
  end

end
