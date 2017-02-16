class CreatePrivateCloudIis < ActiveRecord::Migration[5.0]
  def change
    create_table :private_cloud_iis do |t|
      t.string :code
      t.string :category
      t.string :service_name
      t.string :service_level
      t.string :elasticity
      t.string :server
      t.string :deliver_mode
      t.string :version
      t.string :physical_cores
      t.string :virtual_cpus
      t.string :operative_system
      t.string :processor_speed
      t.string :memory_ram
      t.string :storage
      t.string :characteristic_1
      t.string :characteristic_2
      t.string :characteristic_3
      t.string :characteristic_4
      t.string :billing_unit

      t.timestamps
    end
  end
end
