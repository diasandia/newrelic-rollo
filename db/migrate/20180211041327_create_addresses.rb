class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :state
      t.string :postal_code
      t.string :address_line_one
      t.string :address_line_two

      t.timestamps
    end
  end
end
