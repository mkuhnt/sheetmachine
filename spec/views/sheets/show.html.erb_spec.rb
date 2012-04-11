require 'spec_helper'

describe "sheets/show" do
  before(:each) do
    @sheet = assign(:sheet, stub_model(Sheet,
      :title => "Title",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
