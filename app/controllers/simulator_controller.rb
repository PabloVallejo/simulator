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

end
