class CreateLernmethodens < ActiveRecord::Migration[5.2]
  def change
    create_table :lernmethodens do |t|
      t.string :name

      t.timestamps
    end
  end
end
