class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments
  after_save :update_posts_counter
 validates :title, presence: true, {maximum: 250}, allow_blank: false
 validates :comments_counter, numerically: {only_integer: true, greater_than_or_equal_to: 0}


  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  private

  def update_posts_counter
    author.increment!(:posts_counter)
  end
end
