require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ToiletsHelper do
  describe "opening_times_for_toilet" do
    it 'should return "unknown" in a missing_data span if the toilet is nil' do
      helper.opening_times_for_toilet(nil).should == '<span class="missing_data">Unknown</span>'
    end

    it 'should return "unknown" in a missing_data span if the toilet has no opening or closing time information' do
      helper.opening_times_for_toilet(Toilet.new(:opening_time => nil, :closing_time => nil)).should == '<span class="missing_data">Unknown</span>'
    end

    it 'should render the opening time as hh:mm if the toilet has an opening time' do
      helper.opening_times_for_toilet(Toilet.new(:opening_time => '09:30')).should match(%r{<span class="opening_time time_value">09:30</span>})
    end

    it 'should render the closing time as hh:mm if the toilet has an closing time' do
      helper.opening_times_for_toilet(Toilet.new(:closing_time => '16:45')).should match(%r{<span class="closing_time time_value">16:45</span>})
    end

    it 'should render the opening and closing times spearated by a dash if both are present' do
      toilet = Toilet.new(:opening_time => '09:30', :closing_time => '16:45')
      helper.opening_times_for_toilet(toilet).should match(%r{<.*?opening_time.*?>.*</.*?> &mdash; <.*?closing_time.*?>.*?</.*?>})
    end
  end
end
