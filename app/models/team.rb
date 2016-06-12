class Team < ApplicationRecord
  has_many :users, inverse_of: :team, dependent: :destroy
  validates :uid, presence: true, uniqueness: true
end
