json.array!(@interiors) do |interior|
  json.extract! interior, 
  json.url interior_url(interior, format: :json)
end