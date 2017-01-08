class AddDescriptionToSimulator < ActiveRecord::Migration[5.0]
  def change
    add_column :simulators, :description, :string
  end
end
