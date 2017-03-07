class Build < ApplicationRecord
  has_attached_file :picture, :styles => { full: "500x500>", medium: "300x300", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  has_and_belongs_to_many :products
  belongs_to :user
  has_many :comments, :as => :commentable
  has_many :favorites, :as => :favoritable
  
end
