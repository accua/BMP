class Comments < ApplicationRecord
  belongs_to :users
  belongs_to :comments
  validates :content, presence: :true
end
