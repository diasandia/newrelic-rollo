require "rails_helper"

RSpec.describe UserCompaniesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_companies").to route_to("user_companies#index")
    end

    it "routes to #new" do
      expect(:get => "/user_companies/new").to route_to("user_companies#new")
    end

    it "routes to #show" do
      expect(:get => "/user_companies/1").to route_to("user_companies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_companies/1/edit").to route_to("user_companies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_companies").to route_to("user_companies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_companies/1").to route_to("user_companies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_companies/1").to route_to("user_companies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_companies/1").to route_to("user_companies#destroy", :id => "1")
    end

  end
end
