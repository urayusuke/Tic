class Photo < ApplicationRecord
  belongs_to :user
  has_many :tags, through: :photo_tags
  has_many :photo_tags
end
