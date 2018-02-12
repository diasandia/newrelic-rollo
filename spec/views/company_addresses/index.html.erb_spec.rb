require 'rails_helper'

RSpec.describe "company_addresses/index", type: :view do
  before(:each) do
    assign(:company_addresses, [
      CompanyAddress.create!(
        :company => nil,
        :address => nil
      ),
      CompanyAddress.create!(
        :company => nil,
        :address => nil
      )
    ])
  end

  it "renders a list of company_addresses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
