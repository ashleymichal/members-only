class RenameUsers < ActiveRecord::Migration
  def change
  	rename_table :members, :users
  end
end
