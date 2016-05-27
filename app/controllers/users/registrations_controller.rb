class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :html, :js

  before_filter :configure_permitted_parameters


  def new
    super
  end


  def create
    respond_to do |format|
      @user = User.new sign_up_params
      if @user.save
        format.js { render :template => "devise/registrations/new.js.erb", :layout => false }
      else
        format.js { render :template => "devise/registrations/new.js.erb", :layout => false }
      end
    end
  end


  protected
  def after_update_path_for resource
    edit_user_registration_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:first_name, :last_name, :email, :password, :password_confirmation,:current_password)
    end
  end

  def after_sign_up_path_for(resource)
    root_path
  end

end