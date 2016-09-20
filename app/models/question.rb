class Question < ApplicationRecord
  validates :title, :body, presence: true
  has_many :votes, as: :voteable
  has_many :answers
  belongs_to :user
end
