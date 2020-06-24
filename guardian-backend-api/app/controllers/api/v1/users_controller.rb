class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users.to_json(:include => [
            :events, 
            :member_user_groups => {:include => :group}]
        ) 
    end

    def parseToken 
      token = request.headers["Authenticate"]
      # byebug
      user = User.find(decode(token)["user"]["user_id"])
      render json: user.to_json(:include => [
        :events, 
        :member_user_groups => {:include => :group}]
    ) 
    end

      def create
        
        user = User.create(name: params[:name], username: params[:username], password: params[:password], bio: params[:bio], image: params[:image], city: params[:city], state: params[:state], age: params[:age], email: params[:email], birthday: params[:birthday])
        if (user)
          payload = {user: {id: user.id, user_id: user.id,username: params[:username], bio: params[:bio], image: params[:image],
            city: params[:city], 
            name: params[:name],
            state: params[:state], 
            age: params[:age], email: params[:email], 
            birthday: params[:birthday],
            member_user_groups: user.member_user_groups,
            events: user.events}}
          
         token = encode(payload)
         new_hash={}
         new_hash['user_data'] = payload
         new_hash['token'] = token
         render json: new_hash
    
        else
          render json: { error: 'Failed to create user.' }
        end
      end
    #   def create 
    #     user = User.new(username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation], avatar: params[:avatar])
    #     if user.valid?
    #         user.save
    #         payload = {user: {user_id: user.id, username: params[:username], avatar: params[:avatar], tips: user.tips, case: user.cases}}
    #         token = encode(payload)
    #         new_hash={}
    #         new_hash['user_data'] = payload
    #         new_hash['token'] = token
    #         render json: new_hash
    #     else
    #       render json: { error: 'All fields must not be blank. Password entries must match.'}
    #     end
    # end

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
