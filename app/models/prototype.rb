class Prototype < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_one_attached :image
       

  validates :filed, presence: true
  validates :catch_copy, presence: true
  validates :consept, presence: true
  validates :image, presence: true
end
