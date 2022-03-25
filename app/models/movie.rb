class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true, presence: true 
  has_many :lists, through: :bookmarks
  has_many :bookmarks
  has_one_attached :photo
end
