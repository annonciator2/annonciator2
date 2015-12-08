json.array!(@kebabs) do |kebab|
  json.extract! kebab, :id, :name
  json.url kebab_url(kebab, format: :json)
end
