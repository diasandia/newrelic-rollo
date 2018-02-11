require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :country => "MyString",
      :state => "MyString",
      :postal_code => "MyString",
      :address_line_one => "MyString",
      :address_line_two => "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input[name=?]", "address[country]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[postal_code]"

      assert_select "input[name=?]", "address[address_line_one]"

      assert_select "input[name=?]", "address[address_line_two]"
    end
  end
end
