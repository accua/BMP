class Comment < ApplicationRecord
  belongs_to :users
  belongs_to :products
  validates :content, presence: :true
end
