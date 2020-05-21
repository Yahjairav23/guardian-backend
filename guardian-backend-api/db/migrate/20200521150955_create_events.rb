class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :street_address
      t.string :city
      t.string :state
      t.date :event_date
      t.string :image
      t.integer :group_id
      t.text :description

      t.timestamps
    end
  end
end