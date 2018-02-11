require 'rails_helper'

RSpec.describe "CompaniesAddresses", type: :request do
  describe "GET /companies_addresses" do
    it "works! (now write some real specs)" do
      get companies_addresses_path
      expect(response).to have_http_status(200)
    end
  end
end
