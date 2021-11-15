require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:reviews) }

    it { should have_many(:bookmarks) }
  end

  describe "InDirect Associations" do
    it { should have_many(:saved_movies) }

    it { should have_many(:thoughts) }
  end

  describe "Validations" do
  end
end
