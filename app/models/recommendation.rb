class Recommendation < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user, optional: true
  has_many :comments

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :category, presence: true
  validates :user, presence: true

  def cover_url
    return self[:cover_url] if self[:cover_url].present?
    'https://www.slntechnologies.com/wp-content/uploads/2017/08/ef3-placeholder-image.jpg'
  end

end
