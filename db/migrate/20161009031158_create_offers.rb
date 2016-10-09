class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.integer :currency
      t.integer :amount
      t.text :description

      t.timestamps
    end
  end
end
