class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.text :name
      t.datetime :event_date
      t.datetime :event_time
      t.text :description
      t.text :location
      t.text :image
      t.integer :user_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
