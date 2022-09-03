class Track < ApplicationRecord

    has_one_attached :audio, dependent: :destroy
    has_one_attached :image, dependent: :destroy


end
