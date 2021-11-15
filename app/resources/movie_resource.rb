class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :year, :integer
  attribute :description, :string
  attribute :director_id, :integer
  attribute :image, :string
  attribute :duration, :integer

  # Direct associations

  belongs_to :director

  has_many   :reviews

  has_many   :bookmarks

  has_many   :characters

  # Indirect associations

  many_to_many :cast,
               resource: ActorResource

  many_to_many :eager_watchers,
               resource: UserResource

  many_to_many :ratings,
               resource: UserResource
end
