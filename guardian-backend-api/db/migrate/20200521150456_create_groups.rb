class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :email
      t.string :phone
      t.string :about
      t.string :image
      t.integer :creator_id
      

      t.timestamps
    end
  end
end
