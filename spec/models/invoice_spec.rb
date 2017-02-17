require 'rails_helper'

RSpec.describe Invoice, type: :model do 
	let!(:invoice) {build(:invoice)}
 
  it "has a valid factory" do 
  invoice.should be_valid 
 end
  it "has a present summary and " do
    build(:invoice, summary: "    ",facture: "    ",payment: "    ",client_id: "    ").should_not be_valid
  end
 it "summary has most 20 characters" do
    long_name = "a" * 21
    build(:invoice,summary: long_name).should_not be_valid
    shorter_name = "a" * 20
    build(:invoice, summary: shorter_name).should be_valid
  end
end
