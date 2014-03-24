require "spec_helper"

describe ConsumptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/consumptions").should route_to("consumptions#index")
    end

    it "routes to #new" do
      get("/consumptions/new").should route_to("consumptions#new")
    end

    it "routes to #show" do
      get("/consumptions/1").should route_to("consumptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/consumptions/1/edit").should route_to("consumptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/consumptions").should route_to("consumptions#create")
    end

    it "routes to #update" do
      put("/consumptions/1").should route_to("consumptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/consumptions/1").should route_to("consumptions#destroy", :id => "1")
    end

  end
end
