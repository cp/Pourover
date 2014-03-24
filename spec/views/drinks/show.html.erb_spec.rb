require 'spec_helper'

describe "drinks/show" do
  before(:each) do
    @drink = assign(:drink, stub_model(Drink,
      :name => "Name",
      :caffeine => 1,
      :description => "Description",
      :image_url => "Image Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Description/)
    rendered.should match(/Image Url/)
  end
end
