json.array!(@clients) do |client|
  json.extract! client, :id, :NIP, :name, :address, :mailing_address, :term, :notes
  json.url client_url(client, format: :json)
end
