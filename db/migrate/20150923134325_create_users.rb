class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :country
      t.text :address
      t.integer :age

      t.timestamps
    end
  end
end
