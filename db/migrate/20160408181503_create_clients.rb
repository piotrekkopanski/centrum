class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :NIP
      t.string :name
      t.text :address
      t.text :mailing_address
      t.integer :term
      t.text :notes

      t.timestamps
    end
  end
end
