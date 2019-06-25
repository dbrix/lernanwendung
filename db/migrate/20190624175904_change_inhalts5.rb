class ChangeInhalts5 < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :fachmodul
  end
end
