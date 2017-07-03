require 'rails_helper'

RSpec.describe "organisme_referents/edit", type: :view do
  before(:each) do
    @organisme_referent = assign(:organisme_referent, OrganismeReferent.create!(
      :nomOrganisme => "MyString",
      :adresseNoCivique => 1,
      :adresseRue => "MyString",
      :adresseVille => "MyString",
      :adresseProvince => "MyString",
      :adresseEtat => "MyString",
      :adresseCodePostal => "MyString",
      :telephoneBureau => "MyString",
      :adresseTelecopie => "MyString",
      :courriel => "MyString",
      :siteWeb => "MyString"
    ))
  end

  it "renders the edit organisme_referent form" do
    render

    assert_select "form[action=?][method=?]", organisme_referent_path(@organisme_referent), "post" do

      assert_select "input#organisme_referent_nomOrganisme[name=?]", "organisme_referent[nomOrganisme]"

      assert_select "input#organisme_referent_adresseNoCivique[name=?]", "organisme_referent[adresseNoCivique]"

      assert_select "input#organisme_referent_adresseRue[name=?]", "organisme_referent[adresseRue]"

      assert_select "input#organisme_referent_adresseVille[name=?]", "organisme_referent[adresseVille]"

      assert_select "input#organisme_referent_adresseProvince[name=?]", "organisme_referent[adresseProvince]"

      assert_select "input#organisme_referent_adresseEtat[name=?]", "organisme_referent[adresseEtat]"

      assert_select "input#organisme_referent_adresseCodePostal[name=?]", "organisme_referent[adresseCodePostal]"

      assert_select "input#organisme_referent_telephoneBureau[name=?]", "organisme_referent[telephoneBureau]"

      assert_select "input#organisme_referent_adresseTelecopie[name=?]", "organisme_referent[adresseTelecopie]"

      assert_select "input#organisme_referent_courriel[name=?]", "organisme_referent[courriel]"

      assert_select "input#organisme_referent_siteWeb[name=?]", "organisme_referent[siteWeb]"
    end
  end
end
