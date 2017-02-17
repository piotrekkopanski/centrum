class AddRemarkToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :remark, :text
  end
end
