class Tour < ActiveRecord::Base
  belongs_to :city
  belongs_to :provider

  mount_uploader :image, TourImageUploader
end
