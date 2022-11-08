class Category < ApplicationRecord
  has_many :recommendations
  
  validates :name, presence: true
  validates :name, uniqueness: true
end
