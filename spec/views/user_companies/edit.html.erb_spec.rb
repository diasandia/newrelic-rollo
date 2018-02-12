require 'rails_helper'

RSpec.describe "user_companies/edit", type: :view do
  before(:each) do
    @user_company = assign(:user_company, UserCompany.create!(
      :user => nil,
      :company => nil,
      :address => nil
    ))
  end

  it "renders the edit user_company form" do
    render

    assert_select "form[action=?][method=?]", user_company_path(@user_company), "post" do

      assert_select "input[name=?]", "user_company[user_id]"

      assert_select "input[name=?]", "user_company[company_id]"

      assert_select "input[name=?]", "user_company[address_id]"
    end
  end
end
