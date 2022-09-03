class Track < ApplicationRecord

    has_one_attached :audio, dependent: :destroy

    has_one_attached :image, dependent: :destroy

    validates_presence_of :song, on: :create, message: "can't be blank"

    validates_presence_of :artist, on: :create, message: "can't be blank"

    validates_presence_of :audio, on: :create, message: "can't be blank"

    validates_presence_of :image, on: :create, message: "can't be blank"

    validates :song, length: { maximum: 40 }

    validates :artist, length: { maximum: 20 }

end
