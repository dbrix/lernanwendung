class Fachmodul < ApplicationRecord
  belongs_to :benutzer
  belongs_to :wissensgebiet
  has_many :inhalts
  validates :titel, presence: true, uniqueness: true
  validates :beschreibung, presence: true
  validates :benutzer, presence: true


end
