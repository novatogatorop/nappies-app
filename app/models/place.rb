class Place < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

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
