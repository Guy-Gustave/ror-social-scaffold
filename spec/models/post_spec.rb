require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validation test' do
    it 'should save successfully' do
      post1 = Post.new(content: 'Test content', user_id: 1).save
      expect(post1) == true
    end
  end

  context 'has many comments and likes' do
    it { should have_many(:comments) }
    it { should have_many(:likes) }
  end

  context 'should belong to user model' do
    it { should belong_to(:user) }
  end
end
