json.array!(@annonces) do |annonce|
  json.extract! annonce, :id, :titre, :categorie, :prix, :contenu, :email, :ville
  json.url annonce_url(annonce, format: :json)
end
