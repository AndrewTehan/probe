class CreateStockItems < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_items do |t|
      t.references :store, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, null: false, default: 0
      t.decimal :price, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end
