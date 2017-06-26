class Post < ApplicationRecord
  validates :title, :author, :description, presence: true

end
