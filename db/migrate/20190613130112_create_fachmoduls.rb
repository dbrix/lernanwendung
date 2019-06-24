class CreateFachmoduls < ActiveRecord::Migration[5.2]
  def change
    create_table :fachmoduls do |t|
      t.string :titel
      t.text :beschreibung
      t.references :benutzer, foreign_key: true
      t.references :wissensgebiet, foreign_key: true

      t.timestamps
    end
  end
end
