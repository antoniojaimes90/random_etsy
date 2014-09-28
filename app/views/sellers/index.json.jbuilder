json.array!(@sellers) do |seller|
  json.extract! seller, :cat, :name, :email
  json.url seller_url(seller, format: :json)
end