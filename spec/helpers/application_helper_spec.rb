require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ApplicationHelper do
  describe "required_icon" do
    it "should return a span with class 'required_icon' that contains a single asterisk" do
      helper.required_icon.should == '<span class="required_icon">*</span>'
    end
  end

  describe "mark_text_required" do
    it "should return nothing if no text supplied" do
      helper.mark_text_required.should be_nil
    end

    it "should place the supplied text at the start of the return value" do
      helper.mark_text_required("Some field").should match(/^Some field/)
    end

    it "should place a required_icon at the end of the return value" do
      helper.mark_text_required("Some field").should match(/#{Regexp.escape(helper.required_icon)}$/)
    end
  end
end
