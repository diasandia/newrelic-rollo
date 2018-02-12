require 'rails_helper'

RSpec.describe "company_addresses/new", type: :view do
  before(:each) do
    assign(:company_address, CompanyAddress.new(
      :company => nil,
      :address => nil
    ))
  end

  it "renders new company_address form" do
    render

    assert_select "form[action=?][method=?]", company_addresses_path, "post" do

      assert_select "input[name=?]", "company_address[company_id]"

      assert_select "input[name=?]", "company_address[address_id]"
    end
  end
end
