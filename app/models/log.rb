class Log < ActiveRecord::Base
  belongs_to :event
  validates_presence_of :event_id
  attr_accessible :date, :event_id, :hours


  def self.search(search)

    if search
      Log.joins(:event).order("date").where( ' events.ename LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  def self.total_hours
    return Log.sum(:hours)

  end
end
