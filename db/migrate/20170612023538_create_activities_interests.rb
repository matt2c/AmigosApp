class CreateActivitiesInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :activities_interests do |t|
      t.integer :activity_id
      t.integer :interest_id

      t.timestamps
    end
  end
end
