class Product < ApplicationRecord

  has_attached_file :picture, :styles => { full: "500x500>", medium: "300x300", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  has_many :comments
  has_many :users, through: :comments
  belongs_to :build
  validates :name, :description, :price, presence: :true
end
