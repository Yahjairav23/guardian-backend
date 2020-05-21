class UserGroupsController < ApplicationController
    def index
        user_groups = UserGroup.all
        render json: user_groups 
    end
end
