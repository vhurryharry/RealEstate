class ApplicationController < ActionController::Base
    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?
    helper_method :is_manager?
    
    def current_user
        User.find(session[:user_id])
    end

    def logged_in?
        !session[:user_id].nil?
    end

    def is_manager?
        logged_in? && current_user.role == 'manager'
    end

    def authorized
        redirect_to '/' unless logged_in?
    end
end
