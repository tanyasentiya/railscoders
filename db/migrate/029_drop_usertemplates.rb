class DropUsertemplates < ActiveRecord::Migration
  def self.up
    drop_table :usertemplates
  end
  
  def self.down
    create_table :usertemplates do |t|
      t.column :user_id, :integer
      t.column :name, :string
      t.column :body, :text
    end
    add_index :usertemplates, [:user_id, :name]  end
end
