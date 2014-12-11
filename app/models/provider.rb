class Provider < ActiveRecord::Base
  has_many :tours

  mount_uploader :logo, ProviderLogoUploader
end
