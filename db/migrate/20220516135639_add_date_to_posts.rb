class AddDateToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :dob, :date
    add_column :posts, :url, :string
  end
end
