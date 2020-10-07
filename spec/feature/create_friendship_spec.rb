
RSpec.describe 'friendship controller', type: :feature do
  let(:test_user) do
    User.new(name: 'test_user', email: 'guy@g.com',
             password: 'password', password_confirmation: 'password')
  end

  let(:test_user_2) do
    User.new(name: 'test_user_2', email: 'carl@carl',
             password: 'password', password_confirmation: 'password')
  end

  let(:friendship) { Friendship.new(user_id: test_user_2.id, friend_id: test_user.id, confirmed: false) }
  let(:friendship_2) { Friendship.new(user_id: test_user.id, friend_id: test_user_2.id, confirmed: true) }

  def store_in_database
    test_user.save
    test_user_2.save
  end

  def save_friendships
    friendship.save
  end
end