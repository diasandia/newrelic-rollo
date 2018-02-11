require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :company_name => "Company Name",
        :company_size => "Company Size"
      ),
      Company.create!(
        :company_name => "Company Name",
        :company_size => "Company Size"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Size".to_s, :count => 2
  end
end
