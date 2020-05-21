class User < ApplicationRecord
    has_many :user_groups
    has_many :groups, through: :user_groups
    has_many :created_groups, :class_name => 'Group', :foreign_key => 'creator_id'
    has_many :member_user_groups, :class_name => 'UserGroup', :foreign_key => 'member_id'

    # validates :name, presence: true
    # validates :username, presence: true, uniqueness: {case_sensitive: false}
    # validates :city, presence: true
    # validates :state, presence: true
    # validates :email, presence: true, uniqueness: {case_sensitive: false}
    # validates :age, presence: true
    # validates :birthday, presence: true

end

