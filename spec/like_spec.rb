require 'rails_helper'
require_relative '../app/models/like'

describe Like, type: :model do
  subject { Like.new(id: 10, created_at: '2022-10-20', updated_at: '2022-10-20', post_id: 4, author_id: 2) }

  it 'author id should be an int' do
    subject.post_id = 6
    expect(subject).to_not be_valid
  end
end
