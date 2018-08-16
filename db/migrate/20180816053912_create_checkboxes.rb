class CreateCheckboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :checkboxes do |t|
      t.boolean :air_conditioning
      t.boolean :balcony
      t.boolean :furnished
      t.boolean :include_utility
      t.boolean :pets_allowed
      t.boolean :private_bathroom
      t.boolean :private_bedroom
      t.boolean :refrigerator
      t.boolean :near_bus_line
      t.boolean :smoke_allowed
      t.integer :house_id,  null: false

      t.timestamps
    end
  end
end
