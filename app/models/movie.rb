class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :director

  has_many   :reviews,
             dependent: :destroy

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :characters,
             dependent: :destroy

  # Indirect associations

  has_many   :cast,
             through: :characters,
             source: :actor

  has_many   :eager_watchers,
             through: :bookmarks,
             source: :user

  has_many   :ratings,
             through: :reviews,
             source: :user

  # Validations

  # Scopes

  def to_s
    title
  end
end
