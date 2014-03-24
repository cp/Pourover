require 'spec_helper'

describe "drinks/index" do
  before(:each) do
    assign(:drinks, [
      stub_model(Drink,
        :name => "Name",
        :caffeine => 1,
        :description => "Description",
        :image_url => "Image Url"
      ),
      stub_model(Drink,
        :name => "Name",
        :caffeine => 1,
        :description => "Description",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of drinks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
