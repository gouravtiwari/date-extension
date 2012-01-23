require 'spec_helper'
require 'core_extensions/date'
describe "date extension" do
  it 'should return next wednesday' do
    date = Date.new(2012, 1, 21)

    date.next_wednesday.day.should == 25
    date.next_wednesday.wednesday?.should be_true
  end

  it "should return date of wednesday of nth week" do
  	Date.wednesday_of_week_in_year(5, 2012).should == Date.new(2012, 2, 1)
  end
end