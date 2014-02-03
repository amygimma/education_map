class ProgramsController < ApplicationController
  before_filter :authenticate_user!

  def create

    if not user_signed_in?
      redirect_to new_user_session_path
    else
      @user = current_user
      @program = @user.programs.build(program_params)
      @program.save
    end
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
  end

  def map
  end

  def stats
  end

  def search
  end

  private
    def program_params
     params.require(:program).permit(:name, :street, :city)
    end
end
