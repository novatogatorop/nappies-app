class Type < ApplicationRecord
  has_many :places

  validates :name, presence: true, uniqueness: true, format: { with: /\A\w+\z/,
    message: "only allows standard English letters, numbers and underscores" }
end
