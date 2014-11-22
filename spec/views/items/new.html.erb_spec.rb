require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyText",
      :description => "MyText",
      :iso_9999_v2011_category => "MyText",
      :solves_problem => "MyText",
      :associated_diagnosis => "MyText",
      :seller => "MyText"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "textarea#item_name[name=?]", "item[name]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "textarea#item_iso_9999_v2011_category[name=?]", "item[iso_9999_v2011_category]"

      assert_select "textarea#item_solves_problem[name=?]", "item[solves_problem]"

      assert_select "textarea#item_associated_diagnosis[name=?]", "item[associated_diagnosis]"

      assert_select "textarea#item_seller[name=?]", "item[seller]"
    end
  end
end
