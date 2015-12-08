class CreateKebabs < ActiveRecord::Migration
  def change
    create_table :kebabs do |t|
      t.string :name
      t.string :addresse
      t.integer :note_moyenne
      t.string :latlong
      t.string :tel

      t.timestamps null: false
    end
  end
end
