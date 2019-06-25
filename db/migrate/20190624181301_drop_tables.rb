class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :inhalts
    drop_table :lernmethodens
  end
end
