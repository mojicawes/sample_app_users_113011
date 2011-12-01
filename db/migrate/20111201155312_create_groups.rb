class CreateGroups < ActiveRecord::Migration
  add_index :groups, :follower_id
  add_index :groups, :leader_id
  def change
    create_table :groups do |t|
      t.integer :follower_id
      t.integer :leader_id

      t.timestamps
    end
  end
end
