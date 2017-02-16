class DropPrivateCloudIi < ActiveRecord::Migration[5.0]
  def change
    drop_table :private_cloud_ii_options
  end
end
