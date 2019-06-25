class CreateLernmethoden3 < ActiveRecord::Migration[5.2]
  def change
    create_table :lernmethoden do |t|
      t.string :name
      t.references :fachmodul, foreign_key: true

      t.timestamps
    end
  end
end
