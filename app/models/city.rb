class City < ActiveRecord::Base
  has_many :tours

  mount_uploader :image, CityImageUploader
end
