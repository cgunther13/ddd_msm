class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :movie_id, :integer
  attribute :bio, :string
  attribute :headshot, :string
  attribute :dob, :date

  # Direct associations

  has_many :characters

  # Indirect associations

  many_to_many :filmography,
               resource: MovieResource
end
