class AddInhalts < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :inhalt, :benutzer, index:true,foreign_key: true

  end
end
