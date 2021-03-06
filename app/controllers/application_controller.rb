class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
    def after_sign_in_path_for(resource)
      if resource.bank_account.nil?
        new_bank_account_path
      else
        root_path
      end
    end
end
