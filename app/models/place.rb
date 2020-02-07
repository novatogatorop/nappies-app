class Place < ApplicationRecord
  belongs_to :user
  has_one_attached :photo1
  has_one_attached :photo2
  has_one_attached :photo3


  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :address ],
    # associated_against: {
    #   type: [ :name ]
    # },
    using: {
      tsearch: { prefix: true }
    }
end
