class Review < ApplicationRecord
  belongs_to :idea
  belongs_to :user


  validates :body, presence: true, length: {minimum: 5, maximum: 1000}

end
