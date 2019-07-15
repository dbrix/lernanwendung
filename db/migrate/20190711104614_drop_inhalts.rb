class DropInhalts < ActiveRecord::Migration[5.2]
  def change
    drop_table :inhalts

  end
end
