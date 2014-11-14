require "#{File.dirname(__FILE__)}/wish_list"
require_relative '../spec_helper.rb'

describe WishList do
  before :each do
    @wish_list = WishList.new
    @wish_list.wishes = ["Lamborghini", "Corn Starch and Water Moat", "Vegan Bacon Ice Cream", "Rubber Chicken", "Free Tickets to MockingJay"]
  end

  it "should mixin Enumerable" do
    #@wish_list.is_a?(Enumerable).should be_true
    @wish_list.is_a?(Enumerable).should be_truthy
  end

  context "#each" do
    it "should give me a numberd list" do
      @wish_list.map{|w| w}.should eq ["1. Lamborghini", "2. Corn Starch and Water Moat", "3. Vegan Bacon Ice Cream", "4. Rubber Chicken", "5. Free Tickets to MockingJay"]
    end
  end
end