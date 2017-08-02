class Comment < ApplicationRecord
  validates :content, presence: :true
  acts_as_votable
  
  belongs_to :commentable, polymorphic: true
  belongs_to :user
  has_many :comments, as: :commentable
end
