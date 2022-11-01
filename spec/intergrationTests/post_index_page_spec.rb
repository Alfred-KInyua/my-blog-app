require 'rails_helper'

RSpec.describe 'post', type: :system do
  describe 'post index page' do
    before :all do
      @user = User.create(name: 'Alfred', photo: 'https://somewebsite.com',
                          bio: 'I am a software developer', posts_counter: 0)
      @post = Post.create(title: 'Post 1', text: 'This is a post', author: @user)
    end
   

    it 'I can see the user\'s name' do
      visit user_posts_path(@user)
      expect(page).to have_content('Alfred')
    end
end
end