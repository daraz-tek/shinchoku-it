class User < ApplicationRecord
  belongs_to :team, inverse_of: :users
  has_one :social_profile, inverse_of: :user, dependent: :destroy
end
