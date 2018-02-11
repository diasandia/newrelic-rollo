require 'rails_helper'

RSpec.describe "companies_addresses/index", type: :view do
  before(:each) do
    assign(:companies_addresses, [
      CompaniesAddress.create!(
        :company => nil,
        :address => nil
      ),
      CompaniesAddress.create!(
        :company => nil,
        :address => nil
      )
    ])
  end

  it "renders a list of companies_addresses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
