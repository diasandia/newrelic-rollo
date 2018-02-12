require 'rails_helper'

RSpec.describe "user_companies/new", type: :view do
  before(:each) do
    assign(:user_company, UserCompany.new(
      :user => nil,
      :company => nil,
      :address => nil
    ))
  end

  it "renders new user_company form" do
    render

    assert_select "form[action=?][method=?]", user_companies_path, "post" do

      assert_select "input[name=?]", "user_company[user_id]"

      assert_select "input[name=?]", "user_company[company_id]"

      assert_select "input[name=?]", "user_company[address_id]"
    end
  end
end
