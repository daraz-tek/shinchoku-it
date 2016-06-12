class SocialProfile < ApplicationRecord
  belongs_to :user, inverse_of: :social_profile

  serialize :info, JSON
  serialize :credentials, JSON
  serialize :extra, JSON

  validates :uid, uniqueness: { scope: :provider }
  validates :uid, :provider, :info, :credentials, :extra, presence: true

  scope :slack, -> { where(provider: 'slack') }

  class << self
    def find_by_omniauth(omniauth)
      find_or_initialize_by(provider: omniauth['provider'], uid: omniauth['uid']).tap do |p|
        p.info = omniauth['info']
        p.credentials = omniauth['credentials']
        p.extra = omniauth['extra']
        p.user ||= p.build_user
        p.user.team ||= Team.find_or_initialize_by(uid: omniauth.info['team_id'])
      end
    end
  end
end
