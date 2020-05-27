class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users 
    end

      def create
        user = User.create(name: params[:name], username: params[:username], password: params[:password], bio: params[:bio], image: params[:image], city: params[:city], state: params[:state], age: params[:age], email: params[:email], birthday: params[:birthday])
        # byebug
        if (user && user.authenticate(params[:password]))
          render json: user
        else
          render json: { error: 'failed to create user' }
        end
      end

      # def login 
      #   user = User.find_by(username: params[:username])
      #   # byebug
      #   if (user && user.authenticate(params[:password]))
      #     render json: user
      #   else
      #     render json: { error: 'Username or Password is incorrect' }
      #   end
      # end

    
      private

      def user_params
        params.require(:user).permit(
            :name, 
            :username, 
            :password,  
            :bio, 
            :image,
            :city,
            :state,
            :age,
            :email,
            :birthday
            )
      end

end
