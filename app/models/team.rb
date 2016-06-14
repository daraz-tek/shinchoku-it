class Team < ApplicationRecord
  has_many :users, inverse_of: :team, dependent: :destroy
  has_many :timelines, -> { published.order(id: :desc) }, through: :users, source: :reports
  validates :uid, presence: true, uniqueness: true
end
