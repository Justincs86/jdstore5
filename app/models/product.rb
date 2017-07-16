class Product < ApplicationRecord
  validates_presence_of :title, :description, presence: true

  mount_uploader :image, ImageUploader
end
