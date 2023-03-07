class Post < ApplicationRecord
  belongs_to :user

  has_many :comment

  validates :content, presence: true
  validates :title, presence: true
end
