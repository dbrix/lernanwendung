class Wissensgebiet < ApplicationRecord

  has_many :fachmoduls

  validates :titel, presence: true, uniqueness: true

  validates :beschreibung, presence: true

end
