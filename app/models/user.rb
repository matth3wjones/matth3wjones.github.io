class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, length: { minimum: 3, maximum: 20 }
  validates :email, uniqueness: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ }
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_many :posts, class_name: "Post", foreign_key: :author_id
end
