class UserGroup < ApplicationRecord
    belongs_to :group
    belongs_to :member, :class_name => 'User', :foreign_key => 'member_id'

end

