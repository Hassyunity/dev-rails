class DropComments < ActiveRecord::Migration[6.1]
  def up
    drop_table :comments
  end
end
