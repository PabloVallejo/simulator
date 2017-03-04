class CreateServicePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :service_prices do |t|
      t.integer :provider_id
      t.string :private_cloud_ii_id
      t.float :price

      t.timestamps
    end
  end
end
