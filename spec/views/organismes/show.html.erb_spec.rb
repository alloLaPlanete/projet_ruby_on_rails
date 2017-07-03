require 'rails_helper'

RSpec.describe "organismes/show", type: :view do
  before(:each) do
    @organisme = assign(:organisme, Organisme.create!(
      :nom => "Nom",
      :adresse => "Adresse",
      :telephone => "Telephone",
      :courriel => "Courriel"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Adresse/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(/Courriel/)
  end
end
