class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :account
      
      t.string :name
      t.string :email
      t.string :location
      t.string :category
      t.string :work
      t.timestamps
    end
  end
end
