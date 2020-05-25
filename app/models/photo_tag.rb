class PhotoTag < ApplicationRecord
  belongs_to :photo, foreign_key: true
  belongs_to :tag, foreign_key: true
end
