require 'rails_helper'

RSpec.describe "companies_addresses/show", type: :view do
  before(:each) do
    @companies_address = assign(:companies_address, CompaniesAddress.create!(
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
