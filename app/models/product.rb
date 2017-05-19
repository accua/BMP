class Product < ApplicationRecord

  has_attached_file :picture, :styles => { full: "500x500>", medium: "300x300", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :favorites, :as => :favoritable
  has_many :comments, :as => :commentable
  has_many :users, through: :comments
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :builds
  validates :name, :description, :price, presence: :true
end
