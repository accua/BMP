class Post < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :commentable, :polymorphic => true
  belongs_to :user
  validates :content, :title, presence: :true
  has_many :comments, as: :commentable
  acts_as_votable
end
