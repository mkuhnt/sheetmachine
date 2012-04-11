require 'spec_helper'

describe "sheets/new" do
  before(:each) do
    assign(:sheet, stub_model(Sheet,
      :title => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new sheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sheets_path, :method => "post" do
      assert_select "input#sheet_title", :name => "sheet[title]"
      assert_select "textarea#sheet_body", :name => "sheet[body]"
    end
  end
end
