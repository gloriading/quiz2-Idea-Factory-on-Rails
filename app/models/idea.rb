class Idea < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  validates :title, presence: {message: "must be given"}, uniqueness: true
  validates :description, presence: true, length: {minimum: 5, maximum: 1000}


  def like_for(user)
    self.likes.find_by_user_id(user)
  end

  def liked_by?(user)
    likes.find_by_user_id(user.id).present?
  end


  before_save :squeeze

  private

  def squeeze
    self.title.squeeze!(' ')
  end

end
