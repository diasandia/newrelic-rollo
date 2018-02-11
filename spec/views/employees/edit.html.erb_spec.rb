require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :user => nil,
      :company => nil,
      :address => nil
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input[name=?]", "employee[user_id]"

      assert_select "input[name=?]", "employee[company_id]"

      assert_select "input[name=?]", "employee[address_id]"
    end
  end
end
