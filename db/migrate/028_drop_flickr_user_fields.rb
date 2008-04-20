class DropFlickrUserFields < ActiveRecord::Migration
  def self.up
    remove_column :users, :flickr_username
    remove_column :users, :flickr_id
  end
  
  def self.down
    add_column :users, :flickr_username, :string
    add_column :users, :flickr_id, :string
  end
end
