require "rails_helper"

RSpec.describe UsagersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/usagers").to route_to("usagers#index")
    end

    it "routes to #new" do
      expect(:get => "/usagers/new").to route_to("usagers#new")
    end

    it "routes to #show" do
      expect(:get => "/usagers/1").to route_to("usagers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/usagers/1/edit").to route_to("usagers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/usagers").to route_to("usagers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/usagers/1").to route_to("usagers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/usagers/1").to route_to("usagers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/usagers/1").to route_to("usagers#destroy", :id => "1")
    end

  end
end
