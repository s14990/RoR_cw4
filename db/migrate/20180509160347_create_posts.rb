class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :description
      t.references :user, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
