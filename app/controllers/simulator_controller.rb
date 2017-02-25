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
      category: PrivateCloudIi.pluck('distinct category'),
      service_name: PrivateCloudIi.pluck('distinct service_name'),
      service_level: PrivateCloudIi.pluck('distinct service_level'),
      elasticity: PrivateCloudIi.pluck('distinct elasticity'),
      server: PrivateCloudIi.pluck('distinct server'),
      deliver_mode: PrivateCloudIi.pluck('distinct deliver_mode'),
      version: PrivateCloudIi.pluck('distinct version'),

      physical_cores: PrivateCloudIi.pluck('distinct physical_cores'),
      virtual_cpus: PrivateCloudIi.pluck('distinct virtual_cpus'),
      operative_system: PrivateCloudIi.pluck('distinct operative_system'),
      processor_speed: PrivateCloudIi.pluck('distinct processor_speed'),
      memory_ram: PrivateCloudIi.pluck('distinct memory_ram'),
      storage: PrivateCloudIi.pluck('distinct storage'),

      characteristic_1: PrivateCloudIi.pluck('distinct characteristic_1'),
      characteristic_2: PrivateCloudIi.pluck('distinct characteristic_2'),
      characteristic_3: PrivateCloudIi.pluck('distinct characteristic_3'),
      characteristic_4: PrivateCloudIi.pluck('distinct characteristic_4'),
      billing_unit: PrivateCloudIi.pluck('distinct billing_unit')
    }
  end

  def step_three
  end

end
