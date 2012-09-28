class User < ActiveRecord::Base
 
  has_many :categories
  attr_accessible :email, :first_name, :last_name, :user_name

  validates_presence_of :email
before_create :fill_in_information
  after_create :send_acceptance_letter
  def name
  	self.first_name + ' '+ self.last_name
  end

end
