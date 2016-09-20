class User < ApplicationRecord
  validates :username, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true
  has_secure_password
  has_many :votes, as: :voteable
  has_many :questions
  has_many :answers
end
