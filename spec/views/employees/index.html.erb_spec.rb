require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :user => nil,
        :company => nil,
        :address => nil
      ),
      Employee.create!(
        :user => nil,
        :company => nil,
        :address => nil
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
