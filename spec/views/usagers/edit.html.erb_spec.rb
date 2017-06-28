require 'rails_helper'

RSpec.describe "usagers/edit", type: :view do
  before(:each) do
    @usager = assign(:usager, Usager.create!(
      :courriel => "MyString",
      :nom => "MyString",
      :motPasse => "MyString",
      :role => "MyString"
    ))
  end

  it "renders the edit usager form" do
    render

    assert_select "form[action=?][method=?]", usager_path(@usager), "post" do

      assert_select "input#usager_courriel[name=?]", "usager[courriel]"

      assert_select "input#usager_nom[name=?]", "usager[nom]"

      assert_select "input#usager_motPasse[name=?]", "usager[motPasse]"

      assert_select "input#usager_role[name=?]", "usager[role]"
    end
  end
end
