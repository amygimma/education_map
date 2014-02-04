class ApiController < ApplicationController
  def map
  	@programs = Program.all()
  	render json: @programs
  end
end
