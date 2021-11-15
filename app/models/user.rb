class User < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             dependent: :destroy

  has_many   :bookmarks,
             dependent: :destroy

  # Indirect associations

  has_many   :saved_movies,
             through: :bookmarks,
             source: :movie

  has_many   :thoughts,
             through: :reviews,
             source: :movie

  # Validations

  # Scopes

  def to_s
    email
  end
end
