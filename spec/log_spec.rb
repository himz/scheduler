require "rspec"
require 'spec_helper'
require_relative "../app/models/log"


describe "Home Page" do

  it "should have the content 'log'" do
    visit '/logs'
    page.should have_content('log')
  end
end

describe Log do
  before do
    @log = Log.new(hours: "3", date: "2012-10-09", event_id: "2")
  end

  it {should respond_to(:hours)}
  it {should respond_to(:date)}
  describe "when event_id is not present" do
    before { @log.event_id = " " }
    it { should_not be_valid }
  end


  it "should do something" do

    #To change this template use File | Settings | File Templates.
    true.should == false
  end
end

