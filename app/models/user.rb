class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, length: { minimum: 3, maximum: 20 }
  validates :email, uniqueness: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ }
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_many :posts, class_name: "Post", foreign_key: :author_id
end
