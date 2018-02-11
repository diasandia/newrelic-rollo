require "rails_helper"

RSpec.describe CompaniesAddressesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/companies_addresses").to route_to("companies_addresses#index")
    end

    it "routes to #new" do
      expect(:get => "/companies_addresses/new").to route_to("companies_addresses#new")
    end

    it "routes to #show" do
      expect(:get => "/companies_addresses/1").to route_to("companies_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/companies_addresses/1/edit").to route_to("companies_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/companies_addresses").to route_to("companies_addresses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/companies_addresses/1").to route_to("companies_addresses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/companies_addresses/1").to route_to("companies_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/companies_addresses/1").to route_to("companies_addresses#destroy", :id => "1")
    end

  end
end
