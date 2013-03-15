json.array!(@residences) do |residence|
  json.extract! residence, 
  json.url residence_url(residence, format: :json)
end