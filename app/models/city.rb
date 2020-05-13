class City < ApplicationRecord
  has_one_attached :image

  def thumb
    image.variant(resize: "400x400>").processed
  end
end
