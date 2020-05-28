class Api::V1::AuthController < ApplicationController


      def create 
        user = User.find_by(username: params[:username])
        if (user && user.authenticate(params[:password]))
          render json: user.to_json(:include => [
            :events, 
            :member_user_groups => {:include => :group}]
          ) 
        else
          render json: { error: 'Username or Password is incorrect' }
        end
      end

   
end
