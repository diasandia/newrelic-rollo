require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :country => "Country",
      :state => "State",
      :postal_code => "Postal Code",
      :address_line_one => "Address Line One",
      :address_line_two => "Address Line Two"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Address Line One/)
    expect(rendered).to match(/Address Line Two/)
  end
end
