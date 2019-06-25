class ChangeInhalts3 < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :inhalt

  end
end
