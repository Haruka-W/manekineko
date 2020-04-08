class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
    	t.integer :user_id, null: false
    	t.string :image_id, null: false
    	t.string :title, null: false
    	t.text :content, null: false
    	t.string :sex, null: false
    	t.string :age, null: false
    	t.string :type, null: false
    	t.timestamps
    end
  end
end
