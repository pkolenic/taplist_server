class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user_params = user_params
    @cid = @user_params[:company_id].to_i
    if @cid && @cid < 1
      @company = Company.new(company_params)
      if @company.save
        @user_params[:company_id] = @company.id
      end
    end
      
    @user = User.new(@user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Taplist!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :password_confirmation, :company_id)
    end
    
    def company_params
      params.require(:company).permit(:name, :address, :city, :state, :zip, :email)
    end
end
