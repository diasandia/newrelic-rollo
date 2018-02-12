require 'rails_helper'

RSpec.describe "company_addresses/edit", type: :view do
  before(:each) do
    @company_address = assign(:company_address, CompanyAddress.create!(
      :company => nil,
      :address => nil
    ))
  end

  it "renders the edit company_address form" do
    render

    assert_select "form[action=?][method=?]", company_address_path(@company_address), "post" do

      assert_select "input[name=?]", "company_address[company_id]"

      assert_select "input[name=?]", "company_address[address_id]"
    end
  end
end
