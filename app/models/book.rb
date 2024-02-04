class Book < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true, length: { maximum: 255 }
  validates :author, length: { maximum: 255 }
  validates :publisher, length: { maximum: 255 }
  validates :memo, length: { maximum: 255 }
  
end
