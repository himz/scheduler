class Log < ActiveRecord::Base
  belongs_to :event
  validates_presence_of :event_id
  attr_accessible :date, :event_id, :hours
  def self.search(search)

    if search
      Log.joins(:event).where( ' events.ename LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  def total_hours
    Log.sum(:hours)
  end
end
