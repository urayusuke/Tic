class Tag < ApplicationRecord
  belongs_to :user
  has_many :photos, through: :photo_tags
  has_many :photo_tags
end
