class Prototype < ApplicationRecord
  
       

  validates :filed, presence: true
  validates :catch_copy, presence: true
  validates :consept, presence: true
  validates :image, presence: true
end
