class Director < ApplicationRecord
  mount_uploader :headshot, HeadshotUploader

  # Direct associations

  has_many   :filmography,
             class_name: "Movie",
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end
end
