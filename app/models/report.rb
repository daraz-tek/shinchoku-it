class Report < ApplicationRecord
  belongs_to :user

  validates :title, {
    presence: true,
    length: { maximum: 128 },
  }
  validates :content, {
    presence: true,
    length: { maximum: 4096 },
  }
end