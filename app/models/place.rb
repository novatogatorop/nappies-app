class Place < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_and_belongs_to_many :facility
  has_one_attached :photo1
  has_one_attached :photo2
  has_one_attached :photo3
  has_one_attached :photo4
  has_one_attached :photo5

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
end
