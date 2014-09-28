require 'spec_helper'

describe "sellers/edit" do
  before(:each) do
    @seller = assign(:seller, stub_model(Seller,
      :cat => "MyString",
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit seller form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", seller_path(@seller), "post" do
      assert_select "input#seller_cat[name=?]", "seller[cat]"
      assert_select "input#seller_name[name=?]", "seller[name]"
      assert_select "input#seller_email[name=?]", "seller[email]"
    end
  end
end
