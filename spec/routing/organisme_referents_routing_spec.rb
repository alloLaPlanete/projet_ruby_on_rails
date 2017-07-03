require "rails_helper"

RSpec.describe OrganismeReferentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/organisme_referents").to route_to("organisme_referents#index")
    end

    it "routes to #new" do
      expect(:get => "/organisme_referents/new").to route_to("organisme_referents#new")
    end

    it "routes to #show" do
      expect(:get => "/organisme_referents/1").to route_to("organisme_referents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/organisme_referents/1/edit").to route_to("organisme_referents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/organisme_referents").to route_to("organisme_referents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/organisme_referents/1").to route_to("organisme_referents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/organisme_referents/1").to route_to("organisme_referents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/organisme_referents/1").to route_to("organisme_referents#destroy", :id => "1")
    end

  end
end
