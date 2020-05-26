class UsersController < ApplicationController
    def index
        users = User.all
        render json: users 
    end

    def create
        user = User.create(name: params["name"], username: params["username"], city: params['city'], state: params['state'], bio: params['bio'], email: params['email'], age: params['age'], birthday: params['birthday'], image:params['image'])
        render json: user
    end
end
