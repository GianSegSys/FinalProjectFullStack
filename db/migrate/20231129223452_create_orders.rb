class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.datetime :delivery_date
      t.integer :total
      t.integer :gst
      t.integer :pst
      t.integer :hst
      t.string :address
      t.string :state
      t.string :invoice

      t.timestamps
    end
  end
end
