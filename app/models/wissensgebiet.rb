class Wissensgebiet < ApplicationRecord

  has_many :fachmoduls

  validates :titel, presence: true, uniqueness: true

  validates :beschreibung, presence: true
  def destroy
      raise "Wissensgebiet kann nicht gelöscht werden, da es Fachmoule enthält" unless fachmoduls.count == 0
      # ... ok, go ahead and destroy
      super
    end
end
