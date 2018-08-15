class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string  :address_1, null: false
      t.string  :address_2
      t.string  :city,      null: false
      t.string  :state,     null: false
      t.string  :zip_code,  null: false
      t.integer :house_id,  null: false

      t.timestamps
    end
  end
end
