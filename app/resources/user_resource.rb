class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :username, :string
  attribute :password, :string

  # Direct associations

  has_many   :reviews

  has_many   :bookmarks

  # Indirect associations

  many_to_many :saved_movies,
               resource: MovieResource

  many_to_many :thoughts,
               resource: MovieResource
end
