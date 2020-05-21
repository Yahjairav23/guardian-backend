class Event < ApplicationRecord
    belongs_to :group

    # validates :group_id, presence: true
    # validates :title, presence: true
    # validates :city, presence: true
    # validates :state, presence: true
    # validates :street_address, presence: true
    # validates :event_date, presence: true
    # validates :description, presence: true

end
