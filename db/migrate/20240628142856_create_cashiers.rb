class CreateCashiers < ActiveRecord::Migration[6.1]
  def change
    create_table :cashiers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :patronymic, default: ''
      t.string :passport_number, null: false, unique: true
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
