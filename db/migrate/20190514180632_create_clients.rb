class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :cedula
      t.string :email
      t.string :adress

      t.timestamps
    end
  end
end
