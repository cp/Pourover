require "spec_helper"

describe DrinksController do
  describe "routing" do

    it "routes to #index" do
      get("/drinks").should route_to("drinks#index")
    end

    it "routes to #new" do
      get("/drinks/new").should route_to("drinks#new")
    end

    it "routes to #show" do
      get("/drinks/1").should route_to("drinks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/drinks/1/edit").should route_to("drinks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/drinks").should route_to("drinks#create")
    end

    it "routes to #update" do
      put("/drinks/1").should route_to("drinks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/drinks/1").should route_to("drinks#destroy", :id => "1")
    end

  end
end
