require 'spec_helper'

describe "sheets/edit" do
  before(:each) do
    @sheet = assign(:sheet, stub_model(Sheet,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit sheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sheets_path(@sheet), :method => "post" do
      assert_select "input#sheet_title", :name => "sheet[title]"
      assert_select "textarea#sheet_body", :name => "sheet[body]"
    end
  end
end
