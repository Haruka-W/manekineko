class CreateInviteComments < ActiveRecord::Migration[5.2]
  def change
    create_table :invite_comments do |t|
    	t.integer :user_id, null: false
    	t.integer :invite_id, null: false
    	t.timestamps
    end
  end
end
