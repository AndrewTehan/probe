class CreateRetailChains < ActiveRecord::Migration[6.1]
  def change
    create_table :retail_chains do |t|
      t.string :name, null: false
      t.string :headquarters, null: false
      t.string :ceo, null: false
      t.string :website, null: false
      t.string :contact_email, null: false
      t.string :contact_phone, null: false
      t.string :industry, null: false
      t.date :founded_date, null: false

      t.timestamps
    end
  end
end
