class Invoice < ActiveRecord::Base
has_many :positions
accepts_nested_attributes_for :positions, :allow_destroy => true
attr_accessible :positions_attributes,:Nazwa,:PKWiU,:amount,:unit,:price_unit,:VAT,:total,:summary, :facture, :date_raised, :date, :payment, :currency, :language, :pricing_model
end
