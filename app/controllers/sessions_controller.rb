class SessionsController < ApplicationController

    def create
        @user = User.from_omniauth(env['omniauth.auth'])
        session[:user_id] = user.id
        redirect_to '/dashboard', notice: "Signed In Successfully"
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/', notice: "Signed Out"        
    end

end





# class SessionsController < ApplicationController
#     def create
#         user = User.from_omniauth(env["omniauth.auth"])
#         session[:user_id] = user.id
#         redirect_to root_url, notice: "Signed In!"
#     end


#     def destroy
#         session[:user_id] = nil
#         redirect_to root_url, notice: "Signed Out!"        
#     end

# end
