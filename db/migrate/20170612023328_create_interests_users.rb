class CreateInterestsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :interests_users do |t|
      t.integer :interest_id
      t.integer :user_id

      t.timestamps
    end
  end
end
