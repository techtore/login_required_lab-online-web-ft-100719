class SecretsController < ApplicationController
    before_action :require_login

    def show 
        
    end

    def require_login
        unless current_user
            redirect_to '/login'
        end
      end
end