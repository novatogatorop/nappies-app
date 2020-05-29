class Place < ApplicationRecord
  belongs_to :user
  belongs_to :type
  # has_many :facilities, through: :place_facilities
  # has_many :place_facilities, dependent: :destroy
  has_one_attached :photo1
  has_one_attached :photo2
  has_one_attached :photo3
  has_one_attached :photo4
  has_one_attached :photo5

  validates :name, presence: true
  validates :address, presence: true
  validates :type_id, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :address ],
    associated_against: {
      type: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # scope :changing_table, -> { where(changing_table: true) }
  # scope :toy, -> { where(toy: true) }
  # scope :high_chair, -> { where(high_chair: true) }
  # scope :play_area, -> { where(play_area: true) }

  # def self.search_by(search_term)
  #   where("LOWER(address) LIKE :search_term", search_term: "%#{search_term.downcase}%")
  # end
end
