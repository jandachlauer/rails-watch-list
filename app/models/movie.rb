class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, :overview, presence: true, uniqueness: true, allow_blank: false
  
end
