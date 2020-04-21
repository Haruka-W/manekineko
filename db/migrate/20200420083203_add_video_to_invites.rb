class AddVideoToInvites < ActiveRecord::Migration[5.2]
  def change
    add_column :invites, :video, :string
    add_column :posts, :video, :string
  end
end
