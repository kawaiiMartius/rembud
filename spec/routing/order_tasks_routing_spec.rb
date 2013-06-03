require "spec_helper"

describe OrderTasksController do
  describe "routing" do

    it "routes to #index" do
      get("/order_tasks").should route_to("order_tasks#index")
    end

    it "routes to #new" do
      get("/order_tasks/new").should route_to("order_tasks#new")
    end

    it "routes to #show" do
      get("/order_tasks/1").should route_to("order_tasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/order_tasks/1/edit").should route_to("order_tasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/order_tasks").should route_to("order_tasks#create")
    end

    it "routes to #update" do
      put("/order_tasks/1").should route_to("order_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/order_tasks/1").should route_to("order_tasks#destroy", :id => "1")
    end

  end
end
