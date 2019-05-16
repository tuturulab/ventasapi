class UserController < ApplicationController
  before_action :authorize_request, except: [:create , :login]

  # GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  #POST Create User
  def create 
    @user = User.new(user_params)
      if @user.save
        render json: @user, status: :created
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity          
      end
  end
  
  # POST /auth/login
  def login
    @user = User.find_by_email(params[:email])
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id, aud: @user.roles.name )
      time = Time.now + 24.hours.to_i
      render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                     username: @user.email }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end
  
  private
  #Params Permit
  def user_params
    params.permit(
      :email, :password
    )
  end

end
