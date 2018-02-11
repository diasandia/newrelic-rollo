class CreateCompaniesAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :companies_addresses do |t|
      t.references :company, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
