json.array!(@annonces) do |annonce|
  json.extract! annonce, :id, :titre, :categorie, :prix, :contenu
  json.url annonce_url(annonce, format: :json)
end
