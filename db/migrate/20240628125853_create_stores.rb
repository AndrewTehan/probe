class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.references :retail_chain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
