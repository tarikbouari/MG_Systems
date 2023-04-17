class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.references :product, null: false, foreign_key: {to_table: :products}
      t.integer :quantity
      t.integer :shop_number

      t.timestamps
    end
  end
end
