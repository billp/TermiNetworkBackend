class City < ApplicationRecord
  has_one_attached :image

  def thumb
    image.variant(resize_to_limit: [400, 400]).processed
  end
end