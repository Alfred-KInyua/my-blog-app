require 'rails_helper'

describe 'Users', type: :request do
  it 'renders the users index' do
    get '/users/'
    expect(response).to have_http_status(200)
    expect(response).to render_template(:index)
    expect(response.body).to include('List all users')
  end

  it 'renders the users show' do
    get '/users/2'
    expect(response).to have_http_status(200)
    expect(response).to render_template(:show)
    expect(response.body).to include('list of users')
  end
end
