class Prototype < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         belongs_to :user
         has_many :comments
         has_one_attached :image
         
         validates :title, presence: true
         validates :catch_copy, presence: true
         validates :concept, presence: true
end
