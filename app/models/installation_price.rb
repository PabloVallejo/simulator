class InstallationPrice < ApplicationRecord

  belongs_to :provider
  belongs_to :private_cloud_ii

end
