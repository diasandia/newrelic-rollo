require 'rails_helper'

RSpec.describe "company_addresses/show", type: :view do
  before(:each) do
    @company_address = assign(:company_address, CompanyAddress.create!(
      :company => nil,
      :address => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
