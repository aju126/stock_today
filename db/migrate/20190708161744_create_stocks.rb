class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :sign
      t.string :exchange
      t.jsonb :price

      t.timestamps
    end
  end
end
