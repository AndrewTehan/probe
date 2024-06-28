class CreateCashiers < ActiveRecord::Migration[6.1]
  def change
    create_table :cashiers do |t|
      t.string :name
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
