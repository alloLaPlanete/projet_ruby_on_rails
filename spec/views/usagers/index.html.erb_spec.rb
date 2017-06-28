require 'rails_helper'

RSpec.describe "usagers/index", type: :view do
  before(:each) do
    assign(:usagers, [
      Usager.create!(
        :courriel => "Courriel",
        :nom => "Nom",
        :motPasse => "Mot Passe",
        :role => "Role"
      ),
      Usager.create!(
        :courriel => "Courriel",
        :nom => "Nom",
        :motPasse => "Mot Passe",
        :role => "Role"
      )
    ])
  end

  it "renders a list of usagers" do
    render
    assert_select "tr>td", :text => "Courriel".to_s, :count => 2
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "Mot Passe".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
