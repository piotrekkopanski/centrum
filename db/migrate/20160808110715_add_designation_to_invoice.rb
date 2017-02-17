class AddDesignationToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :designation, :text
  end
end
