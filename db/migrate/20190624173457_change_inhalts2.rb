class ChangeInhalts2 < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :inhalts
    add_foreign_key :inhalt, :lernmethoden, index:true,foreign_key: true

  end
end
