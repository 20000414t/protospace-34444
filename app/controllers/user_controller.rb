class UserController < ApplicationController
  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
end
