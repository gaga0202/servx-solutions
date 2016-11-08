class SignupValidationService

  def initialize(params)
    @params = params
  end


  def create_user
    user = User.new(create_params)
    raise InvalidSignup, "#{user.errors.full_messages.to_sentence}"  if !user.save!
  end

  def create_params
    {
        first_name: @params[:first_name],
        last_name: @params[:last_name],
        email: @params[:email],
        password: @params[:password],
        password_confirmation: @params[:password_confirmation]
    }
  end


end