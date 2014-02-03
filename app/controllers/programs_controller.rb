class ProgramsController < ApplicationController
  before_filter :authenticate_user!

  def create
      @program = current_user.programs.build(program_params)
      @program.save
      redirect_to @program
  end

  def show
    program_id = params["id"]
    @program = current_user.programs.find(program_id) 
    
  end

  def update
  end

  def destroy
  end

  def new
    @program = Program.new
    program_id = params["id"]
  end

  def edit
  end

  def index
    @programs = Program.all()
  end

  def map
  end

  def stats
  end

  def search
  end

  private
    def program_params
     params.require(:program).permit(:name, :street, :city, :state, :country, :description, :email, :homepage, :twitter, :facebook, :meetup, :phone1, :phone2)
    end
end
