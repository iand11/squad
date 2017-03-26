class User < ApplicationRecord
  has_secure_password 
  has_many :team_users
  has_many :teams, through: :team_users

  validates :name, :email, uniqueness: true

end
