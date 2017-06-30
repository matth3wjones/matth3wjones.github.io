class Comment < ApplicationRecord
  validates :text, presence: true
  validates :name, presence: true

  belongs_to :post, optional: true
end
