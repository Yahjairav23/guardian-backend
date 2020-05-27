class Event < ApplicationRecord
    belongs_to :group
    has_many :user_events
    has_many :users, through: :user_events

    # validates :group_id, presence: true
    # validates :title, presence: true
    # validates :city, presence: true
    # validates :state, presence: true
    # validates :street_address, presence: true
    # validates :event_date, presence: true
    # validates :description, presence: true

end
