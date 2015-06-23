class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.boolean :married

      t.timestamps null: false
    end
  end
end
