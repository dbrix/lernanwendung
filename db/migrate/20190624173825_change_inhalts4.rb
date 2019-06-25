class ChangeInhalts4 < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :inhalt, :lernmethoden, index:true,foreign_key: true

  end
end
