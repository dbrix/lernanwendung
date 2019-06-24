class CreateWissensgebiets < ActiveRecord::Migration[5.2]
  def change
    create_table :wissensgebiets do |t|
      t.string :titel
      t.text :beschreibung

      t.timestamps
    end
  end
end
