class Tag < ApplicationRecord
  has_many :photos, through: :photo_tags
  belongs_to :user
end
