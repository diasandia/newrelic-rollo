class CreateUserCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :user_companies do |t|
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
