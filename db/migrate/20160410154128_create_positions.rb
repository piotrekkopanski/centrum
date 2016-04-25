class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :invoice_id
      t.text :Nazwa
      t.integer :PKWiU
      t.integer :amount
      t.text :unit
      t.decimal :price_unit
      t.integer :VAT
      t.decimal :total

      t.timestamps
    end
  end
end
