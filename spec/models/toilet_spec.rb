require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Toilet do
  before(:each) do
    @toilet = Toilet.new(:name => "Toilet", :address => "Address", :lat => "-1", :long => "-1")
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
  
  it "should not be valid without latitiude" do
    @toilet.lat = ""
    @toilet.should_not be_valid
  end
  
  it "should not be valid without longitude" do
    @toilet.long = ""
    @toilet.should_not be_valid
  end

  it "should be valid without an opening time" do
    @toilet.opening_time = nil
    @toilet.should be_valid
  end

  it "should be valid without a closing time" do
    @toilet.closing_time = nil
    @toilet.should be_valid
  end

  it "should be valid if opening and closing times present and are different" do
    @toilet.opening_time = "09:30"
    @toilet.closing_time = "17:30"
    @toilet.should be_valid
  end

  it "should be invalid if opening and closing times present and are the same" do
    @toilet.opening_time = "09:30"
    @toilet.closing_time = "09:30"
    @toilet.should_not be_valid
  end

  describe "has_times?" do
    it "should return false if opening_time and closing_time are blank" do
      @toilet.opening_time = nil
      @toilet.closing_time = nil
      @toilet.should_not have_times
    end

    it "should return true if opening_time is not blank" do
      @toilet.opening_time = "09:30"
      @toilet.closing_time = nil
      @toilet.should have_times
    end

    it "should return true if closing_time is not blank" do
      @toilet.opening_time = nil
      @toilet.closing_time = "16:45"
      @toilet.should have_times
    end

    it "should return true if opening_time and closing_time are not blank" do
      @toilet.opening_time = "09:30"
      @toilet.closing_time = "16:45"
      @toilet.should have_times
    end
  end
end
