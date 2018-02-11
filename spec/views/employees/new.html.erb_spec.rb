require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      :user => nil,
      :company => nil,
      :address => nil
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input[name=?]", "employee[user_id]"

      assert_select "input[name=?]", "employee[company_id]"

      assert_select "input[name=?]", "employee[address_id]"
    end
  end
end
