it 'Display number of likes the post has' do
        visit user_post_path(@user, @post)
        expect(page).to have_content('Likes 0')
      end
  
      it 'Display the posts text' do
        visit user_post_path(@user, @post)
        expect(page).to have_content('This is a post')
      end
  
      it 'display the posts comments' do
        visit user_post_path(@user, @post)
        expect(page).to have_content('Comments')
      end
    end
end
