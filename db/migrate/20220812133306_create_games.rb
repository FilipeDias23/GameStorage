class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre
      t.integer :price
      t.string :platform
      t.string :condition

      t.timestamps
    end
  end
end
