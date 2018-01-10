class Donor < ApplicationRecord
  has_many :cards
  has_many :addresses
end
