class AddNameToPost < ActiveRecord::Migration
  def up
    add_column :posts,:name,:string
  end
  
  def down
    remove_column :posts,:name
  end
end
