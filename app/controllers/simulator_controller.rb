class SimulatorController < ApplicationController

  #
  # Shows the list of available simulators.
  #
  def index
    @simulator_list = Simulator.all
  end

  def show
  end
end
