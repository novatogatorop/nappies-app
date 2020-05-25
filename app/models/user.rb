class User < ApplicationRecord
  has_many :places

  validates :username, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true, uniqueness: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
