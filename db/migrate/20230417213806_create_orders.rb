class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: {to_table: :customers}
      t.references :product, null: false, foreign_key: {to_table: :products}
      t.decimal :amount
      t.timestamps
    end
  end
end
