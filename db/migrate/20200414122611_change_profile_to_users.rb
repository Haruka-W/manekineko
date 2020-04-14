class ChangeProfileToUsers < ActiveRecord::Migration[5.2]
  def change
  	# カラム型をtextからstringに修正
    change_column :users, :profile, :string, default: "こんにちは！", null: false
  end
end
