require 'rails_helper'

RSpec.describe "organismes/edit", type: :view do
  before(:each) do
    @organisme = assign(:organisme, Organisme.create!(
      :nom => "MyString",
      :adresse => "MyString",
      :telephone => "MyString",
      :courriel => "MyString"
    ))
  end

  it "renders the edit organisme form" do
    render

    assert_select "form[action=?][method=?]", organisme_path(@organisme), "post" do

      assert_select "input#organisme_nom[name=?]", "organisme[nom]"

      assert_select "input#organisme_adresse[name=?]", "organisme[adresse]"

      assert_select "input#organisme_telephone[name=?]", "organisme[telephone]"

      assert_select "input#organisme_courriel[name=?]", "organisme[courriel]"
    end
  end
end
