class Event < ActiveRecord::Base
belongs_to :category
has_many :logs
  attr_accessible :category_id, :desc, :ename
end
