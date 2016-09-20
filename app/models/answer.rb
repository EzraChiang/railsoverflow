class Answer < ApplicationRecord

  validates :body, presence: true
  has_many :votes, as: :voteable
  belongs_to :user
  belongs_to :question
end
