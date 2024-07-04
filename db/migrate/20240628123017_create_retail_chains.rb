class CreateRetailChains < ActiveRecord::Migration[6.1]
  def change
    create_table :retail_chains do |t|
      t.string :name, null: false, unique: true
      t.string :headquarters, null: false, unique: true
      t.string :ceo_full_name, null: false
      t.string :website, null: false, unique: true
      t.string :contact_email, null: false, unique: true
      t.string :contact_phone, null: false, unique: true
      t.string :industry, null: false
      t.date :founded_date, null: false

      t.timestamps
    end
  end
end
