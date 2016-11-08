class SignupValidationService

  def initialize(params)
    @params = params
  end


  def create_user
    user = User.new(create_params)
    if !user.save
      user.errors
    end

  end

  def create_params
    {
        first_name: @parmas[:first_name],
        last_name: @params[:last_name],
        email: @params[:email],
        password: @params[:password],
        password_confirmation: @params[:password_confirmation],
    }
  end


end