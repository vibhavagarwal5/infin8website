class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    root_path
  end

  def after_sign_in_path_for(resource)
    if current_user.admin == true
      rails_admin.dashboard_path
    else
      root_path
    end
  end
end
