require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations text" do
    it 'should save successfully' do
      user = User.new(name: 'User1', email: 'user@gmail.com', password: 'password').save
      expect(user) == true
    end

    it 'ensures name of user is present' do
      user = User.new(email: 'user@gmail.com', password: 'password').save
      expect(user).to eq(false)
    end

    it 'ensures password of user is present' do
      user = User.new(name: 'User1', email: 'user@gmail.com').save
      expect(user).to eq(false)
    end

    it 'ensures email and password of user are present' do
      user = User.new(email: 'user@gmail.com', password: 'password').save
      expect(user).to eq(false)
    end
  end
end