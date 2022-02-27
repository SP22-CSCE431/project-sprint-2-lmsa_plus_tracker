class Users::SessionsController < Devise::SessionsController
    def after_sign_out_path_for(_resource_or_scope)
      new_user_session_path
    end
  
    def after_sign_in_path_for(resource_or_scope)

      if current_user.present?
        stored_location_for(resource_or_scope) || edit_user_session_path
      elsif current_user.admin == true
        stored_location_for(resource_or_scope) || admin_root_path
      else
        stored_location_for(resource_or_scope) || root_path
      end
    end

    def post(path, **args)

    end 
end