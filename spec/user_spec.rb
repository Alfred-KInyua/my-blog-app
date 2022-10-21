require 'rails_helper'
require_relative '../app/models/user'
require_relative '../app/models/post'

describe User, type: :model do
  subject { User.new(name: 'Alfred KInyua', photo: 'https:www.facebook.com', bio: 'indiana johns') }

  it 'should have a title' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'post counter should be an int' do
    subject.posts_counter = 10
    expect(subject).to be_valid
  end

  it 'posts counter should be greater or equal to zero' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end
end
