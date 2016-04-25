class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.text :summary
      t.text :facture
      t.text :date_raised
      t.text :date
      t.integer :payment
      t.string :currency
      t.string :language
      t.string :pricing_model

      t.timestamps
    end
  end
end
