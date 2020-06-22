class Api::V1::AuthController < ApplicationController


      def create 
        user = User.find_by(username: params[:username])
        
        if (user && user.authenticate(params[:password]))
          payload = {user: {id: user.id, user_id: user.id,username: params[:username], bio: params[:bio], image: params[:image],
             city: params[:city], 
             name: params[:name],
             state: params[:state], 
             age: params[:age], email: params[:email], 
             birthday: params[:birthday],
             groups: params[:groups],
             events: params[:events]}}
          
          token = encode(payload)
          new_hash={}
          new_hash['user_data'] = payload
          new_hash['token'] = token
          render json: new_hash
        else
          render json: { error: 'Username or Password is incorrect' }
        end
      end

   
end

