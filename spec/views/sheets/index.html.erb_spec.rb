require 'spec_helper'

describe "sheets/index" do
  before(:each) do
    assign(:sheets, [
      stub_model(Sheet,
        :title => "Title",
        :body => "MyText"
      ),
      stub_model(Sheet,
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of sheets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
