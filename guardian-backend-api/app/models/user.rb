class User < ApplicationRecord
    has_secure_password
    has_many :user_groups
    has_many :groupmembers, through: :user_groups
    has_many :created_groups, :class_name => 'Group', :foreign_key => 'creator_id'
    has_many :member_user_groups, :class_name => 'UserGroup', :foreign_key => 'member_id'
    has_many :user_events
    has_many :events, through: :user_events
  
end

