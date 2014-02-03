class ProgramsController < ApplicationController

  def create
    if signed_in? 
      @program = current_user.programs.build(program_params)
      @program.save
      redirect_to @program
    end
  end

  def show
    program_id = params["id"]
    @program = Program.find(program_id) 
    
  end

  def update
    if signed_in?
      program_id = params["id"]
      @program = current_user.programs.find(params[:id])
      @program.update(program_params)
      redirect_to program_path(@program)
    end
  end

  def destroy
    if signed_in?
      user_id = params["id"]
      program = current_user.programs.find(user_id)
      if current_user.id == program.user_id
        program.destroy
      end
      redirect_to programs_path
    end
  end

  def new
    if signed_in? 
      @program = Program.new
      program_id = params["id"]
    end
  end

  def edit
    program_id = params["id"]
    program = Program.find(program_id)
    if signed_in? and current_user.id  == program.user_id
      @program = program
    else 
      redirect_to programs_path
      flash[:notice] = "Cannot edit workshops that you did not create"
    end
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
