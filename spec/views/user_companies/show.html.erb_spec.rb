require 'rails_helper'

RSpec.describe "user_companies/show", type: :view do
  before(:each) do
    @user_company = assign(:user_company, UserCompany.create!(
      :user => nil,
      :company => nil,
      :address => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
