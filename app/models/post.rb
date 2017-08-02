class Post < ApplicationRecord
  validates :content, :title, presence: :true
  acts_as_votable

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :commentable, :polymorphic => true
  belongs_to :user
  has_many :comments, as: :commentable
end
