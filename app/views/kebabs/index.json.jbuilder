json.array!(@kebabs) do |kebab|
  json.extract! kebab, :id, :name, :addresse, :note_moyenne 
  json.url kebab_url(kebab, format: :json)
end
