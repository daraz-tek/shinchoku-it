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

  enum status: { published: 0, draft: 1 }

  scope :search_by, -> keyword do
    where(arel_table[:title].matches("%#{keyword}%").or arel_table[:content].matches("%#{keyword}%"))
  end
end
