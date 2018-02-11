require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :country => "Country",
        :state => "State",
        :postal_code => "Postal Code",
        :address_line_one => "Address Line One",
        :address_line_two => "Address Line Two"
      ),
      Address.create!(
        :country => "Country",
        :state => "State",
        :postal_code => "Postal Code",
        :address_line_one => "Address Line One",
        :address_line_two => "Address Line Two"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line One".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line Two".to_s, :count => 2
  end
end
