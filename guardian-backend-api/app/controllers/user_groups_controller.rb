class UserGroupsController < ApplicationController
    def index
        user_groups = UserGroup.all
        render json: user_groups.to_json(include: [:member, :group])
    end

    def show 
        user_group = UserGroup.find(params[:id])
        render json: user_group.to_json(include: [:member, :group])
    end

    def create 
        user_group = UserGroup.create(member_id: params[:member_id], group_id: params[:group_id])
        render json: user_group.to_json(include: [:member, :group])
    end

    def destroy
        UserGroup.find(params[:id]).destroy
    end

end
