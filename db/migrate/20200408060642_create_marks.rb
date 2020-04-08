class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
    	t.integer :user_id, null: false
    	t.integer :invite_id, null: false
     	t.timestamps
    end
  end
end
