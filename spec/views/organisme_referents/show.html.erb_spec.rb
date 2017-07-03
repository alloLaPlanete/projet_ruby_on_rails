require 'rails_helper'

RSpec.describe "organisme_referents/show", type: :view do
  before(:each) do
    @organisme_referent = assign(:organisme_referent, OrganismeReferent.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom Organisme/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Adresse Rue/)
    expect(rendered).to match(/Adresse Ville/)
    expect(rendered).to match(/Adresse Province/)
    expect(rendered).to match(/Adresse Etat/)
    expect(rendered).to match(/Adresse Code Postal/)
    expect(rendered).to match(/Telephone Bureau/)
    expect(rendered).to match(/Adresse Telecopie/)
    expect(rendered).to match(/Courriel/)
    expect(rendered).to match(/Site Web/)
  end
end
