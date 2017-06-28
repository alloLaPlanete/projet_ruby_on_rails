require 'rails_helper'

RSpec.describe "usagers/new", type: :view do
  before(:each) do
    assign(:usager, Usager.new(
      :courriel => "MyString",
      :nom => "MyString",
      :motPasse => "MyString",
      :role => "MyString"
    ))
  end

  it "renders new usager form" do
    render

    assert_select "form[action=?][method=?]", usagers_path, "post" do

      assert_select "input#usager_courriel[name=?]", "usager[courriel]"

      assert_select "input#usager_nom[name=?]", "usager[nom]"

      assert_select "input#usager_motPasse[name=?]", "usager[motPasse]"

      assert_select "input#usager_role[name=?]", "usager[role]"
    end
  end
end
