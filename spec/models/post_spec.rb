require 'rails_helper'

RSpec.describe Post, type: :model do
  context "validation test" do
    it 'should save successfully' do
      post1 = Post.new(content: 'Test content', user_id: 1).save
      expect(post1) == true
    end
  end
end