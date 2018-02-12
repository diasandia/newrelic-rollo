require 'rails_helper'

RSpec.describe "user_companies/index", type: :view do
  before(:each) do
    assign(:user_companies, [
      UserCompany.create!(
        :user => nil,
        :company => nil,
        :address => nil
      ),
      UserCompany.create!(
        :user => nil,
        :company => nil,
        :address => nil
      )
    ])
  end

  it "renders a list of user_companies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
