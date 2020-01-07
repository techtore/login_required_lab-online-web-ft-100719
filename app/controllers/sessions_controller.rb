class SessionsController < ApplicationController

    def new 
    end

    def create
        session[:name] = params[:name]
        if session[:name].empty? || session[:name].nil?
            redirect_to '/login'
        else 
            session[:name]
            redirect_to '/sessions/show'
        end
    end 

    def destroy
        session.delete :name
    end
end