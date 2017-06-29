class Post < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :user, optional: true
  has_many   :comments
end
