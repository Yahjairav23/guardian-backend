class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :city
      t.string :state
      t.string :bio
      t.string :email
      t.integer :age
      t.date :birthday
      t.string :image

      t.timestamps
    end
  end
end
