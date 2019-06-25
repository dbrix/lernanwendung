class ChangeLernmethoden < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :lernmethoden, :fachmodul, index:true,foreign_key: true

  end
end
