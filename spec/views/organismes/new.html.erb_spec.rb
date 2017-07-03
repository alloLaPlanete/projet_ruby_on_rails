require 'rails_helper'

RSpec.describe "organismes/new", type: :view do
  before(:each) do
    assign(:organisme, Organisme.new(
      :nom => "MyString",
      :adresse => "MyString",
      :telephone => "MyString",
      :courriel => "MyString"
    ))
  end

  it "renders new organisme form" do
    render

    assert_select "form[action=?][method=?]", organismes_path, "post" do

      assert_select "input#organisme_nom[name=?]", "organisme[nom]"

      assert_select "input#organisme_adresse[name=?]", "organisme[adresse]"

      assert_select "input#organisme_telephone[name=?]", "organisme[telephone]"

      assert_select "input#organisme_courriel[name=?]", "organisme[courriel]"
    end
  end
end
