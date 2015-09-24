class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number
      t.string :value
      t.decimal :total

      t.timestamps
    end
  end
end
