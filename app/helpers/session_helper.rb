module SessionHelper
    def current_user
        User.find_by(id: session[:user_id])
      end
    
      def current_user_name
        User.find_by(id: session[:user_id]).first_name
      end
    
      def logged_in?
        session[:user_id].present?
      end
    
      def log_in(user)
        session[:user_id] = user.id
      end
end
