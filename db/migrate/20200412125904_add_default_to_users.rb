class AddDefaultToUsers < ActiveRecord::Migration[5.2]
  def change
    # デフォルト値を追加
    change_column_default :users, :profile, "Hello!"

    # NULL制約を追加
    change_column_null :users, :name, false
    change_column_null :users, :handle_name, false
  end
end
