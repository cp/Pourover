require 'spec_helper'

describe "consumptions/new" do
  before(:each) do
    assign(:consumption, stub_model(Consumption,
      :drink_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new consumption form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consumptions_path, "post" do
      assert_select "input#consumption_drink_id[name=?]", "consumption[drink_id]"
      assert_select "input#consumption_user_id[name=?]", "consumption[user_id]"
    end
  end
end
