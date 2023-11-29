class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.references :province, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
