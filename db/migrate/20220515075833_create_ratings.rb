class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :account
      t.references :post
      t.timestamps
    end
  end
end
