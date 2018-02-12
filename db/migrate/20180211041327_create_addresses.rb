class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country, null: false
      t.string :state, null: false
      t.string :postal_code, null: false
      t.string :address_line_one, null: false
      t.string :address_line_two

      t.timestamps
    end
  end
end
