class UserGroupsController < ApplicationController
    def index
        user_groups = UserGroup.all
        render json: user_groups 
    end

    def create 
        user_group = UserGroup.create(member_id: params[:member_id], group_id: params[:group_id])
        render json: user_group
    end

end
