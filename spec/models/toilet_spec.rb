require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Toilet do
  before(:each) do
    @toilet = Toilet.new(:name => "Toilet", :address => "Address")
  end

  it "should create a new instance given valid attributes" do
    @toilet.should be_valid
  end

  it "should not be valid without a title" do
    @toilet.name = ""
    @toilet.should_not be_valid
  end
  
  it "should not be valid without a address" do
    @toilet.address = ""
    @toilet.should_not be_valid
  end

end
