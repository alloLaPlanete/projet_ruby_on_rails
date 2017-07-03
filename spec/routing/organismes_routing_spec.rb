require "rails_helper"

RSpec.describe OrganismesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/organismes").to route_to("organismes#index")
    end

    it "routes to #new" do
      expect(:get => "/organismes/new").to route_to("organismes#new")
    end

    it "routes to #show" do
      expect(:get => "/organismes/1").to route_to("organismes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/organismes/1/edit").to route_to("organismes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/organismes").to route_to("organismes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/organismes/1").to route_to("organismes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/organismes/1").to route_to("organismes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/organismes/1").to route_to("organismes#destroy", :id => "1")
    end

  end
end
