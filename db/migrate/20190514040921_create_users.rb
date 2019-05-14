class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :pictureUrl
      t.string :facebookId

      t.timestamps
    end
  end
end
