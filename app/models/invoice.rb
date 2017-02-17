class Invoice < ActiveRecord::Base
belongs_to :client
has_many :positions
accepts_nested_attributes_for :positions, :allow_destroy => true
attr_accessible :positions_attributes,:Nazwa,:PKWiU,:amount,:unit,:remark,:price_unit,:VAT,:total,:designation,:summary, :facture, :date_raised, :date,:client_id, :payment, :currency, :language, :pricing_model
has_many :comments,dependent: :destroy
validates :summary, :facture ,:payment ,:currency,:client_id, :presence => true
validates :summary ,:length => {:maximum => 20}
end
