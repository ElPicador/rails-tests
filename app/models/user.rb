class User < ActiveRecord::Base

  has_many :posts
  has_many :comments
  
  validates_uniqueness_of :name, :on => :create, :message => "must be unique"

  before_create :set_email_if_empty
  def set_email_if_empty
    self.email = "#{self.name}@me.com" if self.email.blank?
  end

end
