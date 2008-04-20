class DropTaggingSupport < ActiveRecord::Migration
  def self.up
    drop_table :tags
    drop_table :taggings 
  end
  
  def self.down
    create_table :tags, :force => true do |t|
      t.column :name, :string
    end
    
    create_table :taggings, :force => true do |t|
      t.column :tag_id, :integer
      t.column :taggable_id, :integer
      t.column :taggable_type, :string
      t.column :created_at, :datetime
    end
    
    add_index :tags, :name
    add_index :taggings, [:tag_id, :taggable_id, :taggable_type]
  end
end
