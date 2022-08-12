class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :username
      t.string :location
      t.string :email

      t.timestamps
    end
  end
end