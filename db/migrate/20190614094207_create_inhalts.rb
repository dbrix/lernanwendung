class CreateInhalts < ActiveRecord::Migration[5.2]
  def change
    create_table :inhalts do |t|
      t.string :titel
      t.text :inhalt
      t.boolean :gemeldet
      t.references :fachmodul, foreign_key: true

      t.timestamps
    end
  end
end
