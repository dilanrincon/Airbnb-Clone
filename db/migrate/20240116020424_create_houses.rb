class CreateHouses < ActiveRecord::Migration[7.1]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :image
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
