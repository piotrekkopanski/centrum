class Client < ActiveRecord::Base
has_many :invoices
validates :NIP, :name ,:address ,:mailing_address, :presence => true
validates :NIP ,:length => {:maximum => 20}
end
