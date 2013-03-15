require "spec_helper"

describe ResidencesController do
  describe "routing" do

    it "routes to #index" do
      get("/residences").should route_to("residences#index")
    end

    it "routes to #new" do
      get("/residences/new").should route_to("residences#new")
    end

    it "routes to #show" do
      get("/residences/1").should route_to("residences#show", :id => "1")
    end

    it "routes to #edit" do
      get("/residences/1/edit").should route_to("residences#edit", :id => "1")
    end

    it "routes to #create" do
      post("/residences").should route_to("residences#create")
    end

    it "routes to #update" do
      put("/residences/1").should route_to("residences#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/residences/1").should route_to("residences#destroy", :id => "1")
    end

  end
end
