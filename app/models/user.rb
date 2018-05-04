class User < ApplicationRecord
  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend


  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships, source: :friend

  authenticates_with_sorcery!
  validates_confirmation_of :password

  def remove_friend(friend)
    current_user.friends.destroy(friend)
  end

end
