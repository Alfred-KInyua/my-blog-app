require 'rails_helper'
require_relative '../app/models/user'
require_relative '../app/models/post'

describe User, type: :model do
  subject { User.new(id: 10, name: 'Alfred KInyua', photo: 'https:www.facebook.com', bio: 'indiana johns', posts_counter: 20, created_at: 2022 - 10 - 20, updated_at: 2022 - 10 - 20) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'post counter should be an int' do
    subject.posts_counter = 10
    expect(subject).to be_valid
  end

  it 'posts counter should be greater or equal to zero' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end
  it 'should have a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
