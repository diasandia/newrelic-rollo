require 'rails_helper'

RSpec.describe "companies_addresses/new", type: :view do
  before(:each) do
    assign(:companies_address, CompaniesAddress.new(
      :company => nil,
      :address => nil
    ))
  end

  it "renders new companies_address form" do
    render

    assert_select "form[action=?][method=?]", companies_addresses_path, "post" do

      assert_select "input[name=?]", "companies_address[company_id]"

      assert_select "input[name=?]", "companies_address[address_id]"
    end
  end
end
