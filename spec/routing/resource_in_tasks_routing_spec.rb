require "spec_helper"

describe ResourceInTasksController do
  describe "routing" do

    it "routes to #index" do
      get("/resource_in_tasks").should route_to("resource_in_tasks#index")
    end

    it "routes to #new" do
      get("/resource_in_tasks/new").should route_to("resource_in_tasks#new")
    end

    it "routes to #show" do
      get("/resource_in_tasks/1").should route_to("resource_in_tasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/resource_in_tasks/1/edit").should route_to("resource_in_tasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/resource_in_tasks").should route_to("resource_in_tasks#create")
    end

    it "routes to #update" do
      put("/resource_in_tasks/1").should route_to("resource_in_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/resource_in_tasks/1").should route_to("resource_in_tasks#destroy", :id => "1")
    end

  end
end
