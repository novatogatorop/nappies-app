class Facility < ApplicationRecord
  has_many :places, through: :place_facilities
  has_many :place_facilities
  has_one_attached :photo
end
