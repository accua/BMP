class Product < ApplicationRecord
  has_many :comments
  has_many :users through: :comments
  validates :name, :description, :price, presence: :true
end
