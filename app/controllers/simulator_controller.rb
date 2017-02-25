class SimulatorController < ApplicationController

  #
  # Shows the list of available simulators.
  #
  def index
    @simulator_list = Simulator.all
  end


  #
  # Shows a simulator's detail.
  #
  def show
    @simulator = Simulator.find(params[:id])
  end

  def step_two
    @select_options = {
      category: PrivateCloudIi.where.not(category: nil).pluck('distinct category'),
      service_name: PrivateCloudIi.where.not(service_name: nil).pluck('distinct service_name'),
      service_level: PrivateCloudIi.where.not(service_level: nil).pluck('distinct service_level'),
      elasticity: PrivateCloudIi.where.not(elasticity: nil).pluck('distinct elasticity'),
      server: PrivateCloudIi.where.not(server: nil).pluck('distinct server'),
      deliver_mode: PrivateCloudIi.where.not(deliver_mode: nil).pluck('distinct deliver_mode'),
      version: PrivateCloudIi.where.not(version: nil).pluck('distinct version'),

      physical_cores: PrivateCloudIi.where.not(physical_cores: nil).pluck('distinct physical_cores'),
      virtual_cpus: PrivateCloudIi.where.not(virtual_cpus: nil).pluck('distinct virtual_cpus'),
      operative_system: PrivateCloudIi.where.not(operative_system: nil).pluck('distinct operative_system'),
      processor_speed: PrivateCloudIi.where.not(processor_speed: nil).pluck('distinct processor_speed'),
      memory_ram: PrivateCloudIi.where.not(memory_ram: nil).pluck('distinct memory_ram'),
      storage: PrivateCloudIi.where.not(storage: nil).pluck('distinct storage'),

      characteristic_1: PrivateCloudIi.where.not(characteristic_1: nil).pluck('distinct characteristic_1'),
      characteristic_2: PrivateCloudIi.where.not(characteristic_2: nil).pluck('distinct characteristic_2'),
      characteristic_3: PrivateCloudIi.where.not(characteristic_3: nil).pluck('distinct characteristic_3'),
      characteristic_4: PrivateCloudIi.where.not(characteristic_4: nil).pluck('distinct characteristic_4'),
      billing_unit: PrivateCloudIi.where.not(billing_unit: nil).pluck('distinct billing_unit')
    }
  end

  def step_three
  end

end
