class Photo < ApplicationRecord
  belongs_to :user
  has_many :tags, through: :photo_tags
end
