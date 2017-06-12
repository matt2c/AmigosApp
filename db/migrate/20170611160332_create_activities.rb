class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.text :name
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.text :location
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
