class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  def confirm_friend(obj)
    obj.update_attributes(confirmed: true)
    Friendship.create!(friend_id: obj.user_id, user_id: obj.friend_id, confirmed: true)
  end
end
