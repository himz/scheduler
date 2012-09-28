class Category < ActiveRecord::Base
belongs_to :user
has_many :events
  attr_accessible :cname, :desc, :user_id
end
