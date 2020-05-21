class UserGroup < ApplicationRecord
    belongs_to :group
    belongs_to :member, :class_name => 'User', :foreign_key => 'member_id'

    # validates :member_id, presence: true
    # validates :creator_id, presence: true
    # validates :group_id, presence: true
end

