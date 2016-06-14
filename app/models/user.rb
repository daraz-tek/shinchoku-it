class User < ApplicationRecord
  belongs_to :team, inverse_of: :users
  has_one :social_profile, inverse_of: :user, dependent: :destroy
  has_many :reports, dependent: :destroy

  def nickname
    info['nickname']
  end

  def admin?
    !! info['is_admin']
  end

  def time_zone
    info['time_zone']
  end

  def image_24
    info['image_24']
  end

  def image_48
    info['image_48']
  end

  def image
    info['image']
  end

  private

    def info
      social_profile.info.to_h
    end
end
