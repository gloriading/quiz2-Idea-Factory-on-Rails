class Idea < ApplicationRecord
  has_many :reviews, dependent: :destroy 

  validates :title, presence: {message: "must be given"}, uniqueness: true
  validates :description, presence: true, length: {minimum: 5, maximum: 1000}

  before_save :squeeze

  private

  def squeeze
    self.title.squeeze!(' ')
  end

end
