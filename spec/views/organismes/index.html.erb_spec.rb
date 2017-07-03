require 'rails_helper'

RSpec.describe "organismes/index", type: :view do
  before(:each) do
    assign(:organismes, [
      Organisme.create!(
        :nom => "Nom",
        :adresse => "Adresse",
        :telephone => "Telephone",
        :courriel => "Courriel"
      ),
      Organisme.create!(
        :nom => "Nom",
        :adresse => "Adresse",
        :telephone => "Telephone",
        :courriel => "Courriel"
      )
    ])
  end

  it "renders a list of organismes" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "Adresse".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Courriel".to_s, :count => 2
  end
end
