class Prototype < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
       

  validates :filed, presence: true
  validates :catch_copy, presence: true
  validates :consept, presence: true
  validates :image, presence: true
end
