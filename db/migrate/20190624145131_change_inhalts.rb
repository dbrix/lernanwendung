class ChangeInhalts < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :inhalt, :lernmethoden, foreign_key: true
  end
end
