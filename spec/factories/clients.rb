FactoryGirl.define do
   factory :client do
      NIP{Faker::Number.between(1,99999999)}
      name{Faker::Name.name}
      address{Faker::Address.street_address}
      mailing_address{Faker::Internet.email}
      term{Faker::Number.between(1,99999999)} 
      notes{Faker::Lorem.sentences}
 			created_at{Date.current}
  end
end
 
 
