require 'spec_helper'

describe "drinks/new" do
  before(:each) do
    assign(:drink, stub_model(Drink,
      :name => "MyString",
      :caffeine => 1,
      :description => "MyString",
      :image_url => "MyString"
    ).as_new_record)
  end

  it "renders new drink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", drinks_path, "post" do
      assert_select "input#drink_name[name=?]", "drink[name]"
      assert_select "input#drink_caffeine[name=?]", "drink[caffeine]"
      assert_select "input#drink_description[name=?]", "drink[description]"
      assert_select "input#drink_image_url[name=?]", "drink[image_url]"
    end
  end
end
