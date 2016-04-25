json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :summary, :facture, :date_raised, :date, :payment, :currency, :language, :pricing_model
  json.url invoice_url(invoice, format: :json)
end

