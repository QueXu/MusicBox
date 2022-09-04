class Track < ApplicationRecord

    belongs_to :user

    has_one_attached :audio, dependent: :destroy

    has_one_attached :image, dependent: :destroy

    validates :audio, blob: { content_type: :audio }

    validates :image, blob: { content_type: :image }

    validates_presence_of :song, on: :create, message: "can't be blank"

    validates_presence_of :artist, on: :create, message: "can't be blank"

    validates_presence_of :audio, on: :create, message: "can't be blank"

    validates_presence_of :image, on: :create, message: "can't be blank"

    validates :song, length: { maximum: 40 }

    validates :artist, length: { maximum: 20 }

end
