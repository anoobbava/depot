class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    products_path
  end
end
