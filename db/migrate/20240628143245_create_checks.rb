class CreateChecks < ActiveRecord::Migration[6.1]
  def change
    create_table :checks do |t|
      t.decimal :total_amount, precision: 10, scale: 2
      t.references :customer, null: false, foreign_key: true
      t.references :cashier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
