class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_uniqueness_of :movie, scope: :list
  validates_length_of :comment, minimum: 6
end
