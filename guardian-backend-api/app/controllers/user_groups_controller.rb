class UserGroupsController < ApplicationController
    def index
        user_groups = UserGroup.all
        render json: user_groups 
    end

    def group 
        group = UserGroup.all.find_all{|user_group| user_group.group_id == params[:id].to_i}
        i=0
        members = []
        while i<group.length do
            members.push(User.all.find(group[i].member_id))
            i+=1
        end
        
        render json: members
    end
       
end
