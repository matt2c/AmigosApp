class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.text :password_digest
      t.string :gender
      t.datetime :birthday
      t.string :relationship
      t.string :livingplace
      t.string :language
      t.float :latitude
      t.float :longitude
      t.text :image

      t.timestamps
    end
  end
end
