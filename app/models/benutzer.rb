class Benutzer < ApplicationRecord
  has_many :fachmoduls
  has_secure_password
  validates :mail, presence: true, uniqueness: true

end
