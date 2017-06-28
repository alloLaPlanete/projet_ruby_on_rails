require 'rails_helper'

RSpec.describe "usagers/show", type: :view do
  before(:each) do
    @usager = assign(:usager, Usager.create!(
      :courriel => "Courriel",
      :nom => "Nom",
      :motPasse => "Mot Passe",
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Courriel/)
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Mot Passe/)
    expect(rendered).to match(/Role/)
  end
end
