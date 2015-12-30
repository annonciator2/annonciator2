class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :titre
      t.string :categorie
      t.string :prix
      t.string :contenu
      t.string :email
      t.string :ville

      t.timestamps null: false
    end
  end
end
