class Group < ApplicationRecord
    has_many :events
    has_many :user_groups
    belongs_to :creator, :class_name => 'User', :foreign_key => 'creator_id'
    has_many :member_ids, through: :user_groups, :source => 'member'
     
end
