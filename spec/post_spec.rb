require 'rails_helper'
require_relative '../app/models/user'
require_relative '../app/models/post'

describe Post, type: :model do
  before(:all) do
    @new_user = User.create(
      name: 'Smith', photo: 'https:some picture',
      bio: 'random guys.', posts_counter: 0
    )
  end

  subject do
    Post.new(
      title: 'Ghost', text: 'My Ghost', comments_counter: 2,
      likes_counter: 0, author_id: 10, id: @new_user.id
    )
  end

  before { subject.save }

  it 'should accept likes_counter ' do
    subject.likes_counter = 1
    expect(subject).to_not be_valid
  end

  context 'Return invalid data' do
    it 'should not accept blank title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'should not accept more than 250 character' do
      subject.title = '
      Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula
      eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient
      montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque
      eu, pretium quis,'
      expect(subject).to_not be_valid
    end

    it 'should accept negative comments_counter' do
      subject.comments_counter = -2
      expect(subject).to_not be_valid
    end

    it 'should accept non numerical comments_counter' do
      subject.comments_counter = 'C'
      expect(subject).to_not be_valid
    end

    it 'should accept negative likes_counter' do
      subject.likes_counter = -6
      expect(subject).to_not be_valid
    end

    it 'should accept non numerical likes_counter' do
      subject.likes_counter = 'C'
      expect(subject).to_not be_valid
    end
  end
end
