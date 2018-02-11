require 'rails_helper'

RSpec.describe "companies_addresses/edit", type: :view do
  before(:each) do
    @companies_address = assign(:companies_address, CompaniesAddress.create!(
      :company => nil,
      :address => nil
    ))
  end

  it "renders the edit companies_address form" do
    render

    assert_select "form[action=?][method=?]", companies_address_path(@companies_address), "post" do

      assert_select "input[name=?]", "companies_address[company_id]"

      assert_select "input[name=?]", "companies_address[address_id]"
    end
  end
end
