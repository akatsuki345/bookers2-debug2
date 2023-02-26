class Book < ApplicationRecord
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}
  belongs_to :user

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
