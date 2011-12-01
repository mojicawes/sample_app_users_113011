class CreateMicroposts < ActiveRecord::Migration
  add_index :microposts, :user_id
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
