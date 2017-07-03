require 'rails_helper'

RSpec.describe "organisme_referents/index", type: :view do
  before(:each) do
    assign(:organisme_referents, [
      OrganismeReferent.create!(
        :nomOrganisme => "Nom Organisme",
        :adresseNoCivique => 2,
        :adresseRue => "Adresse Rue",
        :adresseVille => "Adresse Ville",
        :adresseProvince => "Adresse Province",
        :adresseEtat => "Adresse Etat",
        :adresseCodePostal => "Adresse Code Postal",
        :telephoneBureau => "Telephone Bureau",
        :adresseTelecopie => "Adresse Telecopie",
        :courriel => "Courriel",
        :siteWeb => "Site Web"
      ),
      OrganismeReferent.create!(
        :nomOrganisme => "Nom Organisme",
        :adresseNoCivique => 2,
        :adresseRue => "Adresse Rue",
        :adresseVille => "Adresse Ville",
        :adresseProvince => "Adresse Province",
        :adresseEtat => "Adresse Etat",
        :adresseCodePostal => "Adresse Code Postal",
        :telephoneBureau => "Telephone Bureau",
        :adresseTelecopie => "Adresse Telecopie",
        :courriel => "Courriel",
        :siteWeb => "Site Web"
      )
    ])
  end

  it "renders a list of organisme_referents" do
    render
    assert_select "tr>td", :text => "Nom Organisme".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Adresse Rue".to_s, :count => 2
    assert_select "tr>td", :text => "Adresse Ville".to_s, :count => 2
    assert_select "tr>td", :text => "Adresse Province".to_s, :count => 2
    assert_select "tr>td", :text => "Adresse Etat".to_s, :count => 2
    assert_select "tr>td", :text => "Adresse Code Postal".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone Bureau".to_s, :count => 2
    assert_select "tr>td", :text => "Adresse Telecopie".to_s, :count => 2
    assert_select "tr>td", :text => "Courriel".to_s, :count => 2
    assert_select "tr>td", :text => "Site Web".to_s, :count => 2
  end
end
