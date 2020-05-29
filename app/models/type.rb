class Type < ApplicationRecord
  has_many :places

  validates :name, presence: true
end
