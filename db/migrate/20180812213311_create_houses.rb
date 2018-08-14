class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.money      :rent,             null: false
      t.money      :deposit
      t.text       :description
      t.integer    :preferred_gender, null: false

      t.timestamps
    end
  end
end
