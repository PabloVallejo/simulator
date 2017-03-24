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
    @simulator = Simulator.find(params[:simulator_id])
    @category_list = PrivateCloudIi.where.not(category: nil).pluck('distinct category')
    @category_list.unshift('--------')
  end

  #
  # Get data from step two form.
  #
  def step_three
    private_cloud_ids = PrivateCloudIi.where(
      category: params[:category],
      service_name: params[:service_name],
      service_level: params[:service_level],
      elasticity: params[:elasticity],
      server: params[:server],
      deliver_mode: params[:deliver_mode],
      version: params[:version],
      physical_cores: params[:physical_cores],
      virtual_cpus: params[:virtual_cpus],
      operative_system: params[:operative_system],
      processor_speed: params[:processor_speed],
      memory_ram: params[:memory_ram],
      storage: params[:storage],
      characteristic_1: params[:characteristic_1],
      characteristic_2: params[:characteristic_2],
      characteristic_3: params[:characteristic_3],
      characteristic_4: params[:characteristic_4]
    ).pluck('id')

    @service_prices = ServicePrice.where(
      private_cloud_ii_id: private_cloud_ids
    )

    @installation_prices = InstallationPrice.where(
      private_cloud_ii_id: private_cloud_ids
    )
  end


  #
  # Returns list of choices based on previous elements
  #
  def choices
    case params[:slug]
    when 'category'
      options = PrivateCloudIi.where(
        category: params[:category]
      ).pluck('distinct service_name')

    when 'service_name'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name]
      ).pluck('distinct service_level')

    when 'service_level'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level]
      ).pluck('distinct elasticity')

    when 'elasticity'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity]
      ).pluck('distinct server')

    when 'server'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server]
      ).pluck('distinct deliver_mode')

    when 'deliver_mode'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode]
      ).pluck('distinct version')

    when 'version'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version]
      ).pluck('distinct physical_cores')

    when 'physical_cores'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores]
      ).pluck('distinct virtual_cpus')

    when 'virtual_cpus'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores],
        virtual_cpus: params[:virtual_cpus]
      ).pluck('distinct operative_system')

    when 'operative_system'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores],
        virtual_cpus: params[:virtual_cpus],
        operative_system: params[:operative_system]
      ).pluck('distinct processor_speed')

    when 'processor_speed'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores],
        virtual_cpus: params[:virtual_cpus],
        operative_system: params[:operative_system],
        processor_speed: params[:processor_speed]
      ).pluck('distinct memory_ram')

    when 'memory_ram'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores],
        virtual_cpus: params[:virtual_cpus],
        operative_system: params[:operative_system],
        processor_speed: params[:processor_speed],
        memory_ram: params[:memory_ram]
      ).pluck('distinct storage')

    when 'storage'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores],
        virtual_cpus: params[:virtual_cpus],
        operative_system: params[:operative_system],
        processor_speed: params[:processor_speed],
        memory_ram: params[:memory_ram],
        storage: params[:storage]
      ).pluck('distinct characteristic_1')

    when 'characteristic_1'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores],
        virtual_cpus: params[:virtual_cpus],
        operative_system: params[:operative_system],
        processor_speed: params[:processor_speed],
        memory_ram: params[:memory_ram],
        storage: params[:storage],
        characteristic_1: params[:characteristic_1]
      ).pluck('distinct characteristic_2')

    when 'characteristic_2'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores],
        virtual_cpus: params[:virtual_cpus],
        operative_system: params[:operative_system],
        processor_speed: params[:processor_speed],
        memory_ram: params[:memory_ram],
        storage: params[:storage],
        characteristic_1: params[:characteristic_1],
        characteristic_2: params[:characteristic_2],
      ).pluck('distinct characteristic_3')

    when 'characteristic_3'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores],
        virtual_cpus: params[:virtual_cpus],
        operative_system: params[:operative_system],
        processor_speed: params[:processor_speed],
        memory_ram: params[:memory_ram],
        storage: params[:storage],
        characteristic_1: params[:characteristic_1],
        characteristic_2: params[:characteristic_2],
        characteristic_3: params[:characteristic_3]
      ).pluck('distinct characteristic_4')

    when 'characteristic_4'
      options = PrivateCloudIi.where(
        category: params[:category],
        service_name: params[:service_name],
        service_level: params[:service_level],
        elasticity: params[:elasticity],
        server: params[:server],
        deliver_mode: params[:deliver_mode],
        version: params[:version],
        physical_cores: params[:physical_cores],
        virtual_cpus: params[:virtual_cpus],
        operative_system: params[:operative_system],
        processor_speed: params[:processor_speed],
        memory_ram: params[:memory_ram],
        storage: params[:storage],
        characteristic_1: params[:characteristic_1],
        characteristic_2: params[:characteristic_2],
        characteristic_3: params[:characteristic_3],
        characteristic_4: params[:characteristic_4]
      ).pluck('distinct billing_unit')
    end

    options.unshift('---------')
    render json: {
      options: options
    }
  end

end
