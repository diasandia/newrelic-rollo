class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  # GET /users
  def index
    if params[:q]
      @users = User.search(params[:q]).records
    else
      @users = User.all
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :job_title)
    end
end
