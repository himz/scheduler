# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

print("seed data")
User.delete_all
Category.delete_all
Event.delete_all
Log.delete_all
User.create(:user_name=> "Test User",:email=> "abc@abc.com",:first_name=> "Test",:last_name=> "User")
Category.create(:cname=> "Study",:desc=> "All thing study go here",:user_id=> "1")
Category.create(:cname=> "Fun",:desc=> "All thing study go here",:user_id=> "1")
Category.create(:cname=> "Health",:desc=> "All thing study go here",:user_id=> "1")
Category.create(:cname=> "Programming",:desc=> "All thing study go here",:user_id=> "1")
Event.create(:ename=> "Software Engineering",:desc=> "ISE",:category_id=> "1")
Event.create(:ename=> "ICS",:desc=> "ISE",:category_id=> "1")
Event.create(:ename=> "Reading",:desc=> "ISE",:category_id=> "2")
Event.create(:ename=> "Gaming",:desc=> "ISE",:category_id=> "2")
Event.create(:ename=> "Gym",:desc=> "ISE",:category_id=> "3")
Event.create(:ename=> "BasketBall",:desc=> "ISE",:category_id=> "2")
Event.create(:ename=> "Running",:desc=> "ISE",:category_id=> "3")
Event.create(:ename=> "Dance",:desc=> "ISE",:category_id=> "2")
Event.create(:ename=> "Party",:desc=> "ISE",:category_id=> "2")
Log.create(:date=> "2012-10-01",:hours=>"2",:event_id=>"1")
Log.create(:date=> "2012-10-02",:hours=>"1",:event_id=>"2")
Log.create(:date=> "2012-10-01",:hours=>"3",:event_id=>"1")
Log.create(:date=> "2012-10-01",:hours=>"4",:event_id=>"2")
Log.create(:date=> "2012-10-05",:hours=>"2.5",:event_id=>"3")
Log.create(:date=> "2012-10-10",:hours=>"1",:event_id=>"4")
Log.create(:date=> "2012-10-11",:hours=>"6",:event_id=>"5")
Log.create(:date=> "2012-10-02",:hours=>"7",:event_id=>"6")
Log.create(:date=> "2012-10-06",:hours=>"4",:event_id=>"7")
Log.create(:date=> "2012-10-07",:hours=>"10",:event_id=>"1")
Log.create(:date=> "2012-10-08",:hours=>"5",:event_id=>"4")
Log.create(:date=> "2012-10-09",:hours=>"2",:event_id=>"5")
Log.create(:date=> "2012-10-10",:hours=>"1",:event_id=>"6")
Log.create(:date=> "2012-10-04",:hours=>"3",:event_id=>"2")
Log.create(:date=> "2012-10-03",:hours=>"1",:event_id=>"4")
Log.create(:date=> "2012-10-05",:hours=>"1",:event_id=>"7")


