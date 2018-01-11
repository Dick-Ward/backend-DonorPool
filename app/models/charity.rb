class Charity < ApplicationRecord
  has_many :transactions
  has_many :users, through: :transactions

  has_many :supports
  has_many :supporters, through: :supports, source: :user
end
