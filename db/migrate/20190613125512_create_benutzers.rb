class CreateBenutzers < ActiveRecord::Migration[5.2]
  def change
    create_table :benutzers do |t|
      t.string :mail
      t.string :name
      t.string :passwort
      t.boolean :tutor
      t.boolean :qualTut
      t.boolean :ansprechpartner
      t.boolean :admin

      t.timestamps
    end
  end
end
