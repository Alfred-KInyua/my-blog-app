require 'rails_helper'

describe 'Posts', type: :request do
  it 'renders the posts index' do
    get '/users/1/posts'
    expect(response).to have_http_status(200)
    expect(response).to render_template(:index)
    expect(response.body).to include('This is a post')
  end

  it 'renders the users show' do
    get '/users/2/posts/4'
    expect(response).to have_http_status(200)
    expect(response).to render_template(:show)
    expect(response.body).to include('show post for a given user')
  end
end
