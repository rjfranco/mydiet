require "spec_helper"

describe MealPlansController do
  describe "routing" do

    it "routes to #index" do
      get("/meal_plans").should route_to("meal_plans#index")
    end

    it "routes to #new" do
      get("/meal_plans/new").should route_to("meal_plans#new")
    end

    it "routes to #show" do
      get("/meal_plans/1").should route_to("meal_plans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/meal_plans/1/edit").should route_to("meal_plans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/meal_plans").should route_to("meal_plans#create")
    end

    it "routes to #update" do
      put("/meal_plans/1").should route_to("meal_plans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/meal_plans/1").should route_to("meal_plans#destroy", :id => "1")
    end

  end
end
