require 'rails_helper'

RSpec.describe Client, type: :model do 
	let!(:client) {build(:client)}
 
  it "has a valid factory" do 
  client.should be_valid 
 end
  
  it "has a present NIP and name and..." do
    build(:client, NIP: "    ",name: "    ",address: "    ",mailing_address: "    ").should_not be_valid
  end
 it "NIP has most 20 characters" do
    long_name = "1" * 21
    build(:client,NIP: long_name).should_not be_valid
    shorter_name = "1" * 20
    build(:client, NIP: shorter_name).should be_valid
  end
end
