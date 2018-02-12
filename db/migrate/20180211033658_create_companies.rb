class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company_name, null: false
      t.string :company_size, null: false

      t.timestamps
    end
  end
end
