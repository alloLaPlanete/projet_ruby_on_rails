require 'rails_helper'

RSpec.describe "Usagers", type: :request do
  describe "GET /usagers" do
    it "works! (now write some real specs)" do
      get usagers_path
      expect(response).to have_http_status(200)
    end
  end
end
