
require 'rails_helper'
require_relative '../app/models/user'
require_relative '../app/models/post'
require_relative '../app/models/comment'

describe Comment, type: :model do
    subject { Comment.new(id: 10, text: 'this is a test') }
  
    it 'should have a text field' do
      subject.text = nil
      expect(subject).to_not be_valid
    end
  
    it 'comment created at should be an date' do
      subject.created_at = "Hello"
      expect(subject).to_not be_valid
    end
  
 end
  