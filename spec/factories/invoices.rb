FactoryGirl.define do
   factory :invoice do
      summary{Faker::Number.between(1,99999999)}
      facture{Faker::Name.name}
      date{Faker::Address.street_address}
      payment{Faker::Internet.email}
      currency{Faker::Number.between(1,99999999)} 
      language{Faker::Lorem.sentences}
 			pricing_model{Date.current}
      name{Faker::Name.name}
      remark{Faker::Address.street_address}
      designation{Faker::Internet.email}
      client_id{Faker::Name.name} 
      remarks{Faker::Lorem.sentences}
 			created_at{Date.current}
  end
end
 
