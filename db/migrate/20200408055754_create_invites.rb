class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
        t.integer :user_id
    	t.string :image_id
    	t.string :title
    	t.text :content
    	t.integer :sex, null: false, default: "0"
        t.integer :age, null: false, default: "0"
        t.integer :type, null: false, default: "0"
    	t.timestamps
    end
  end
end
