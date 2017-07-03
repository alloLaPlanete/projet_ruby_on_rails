require 'rails_helper'

RSpec.describe "Organismes", type: :request do
  describe "GET /organismes" do
    it "works! (now write some real specs)" do
      get organismes_path
      expect(response).to have_http_status(200)
    end
  end
end
