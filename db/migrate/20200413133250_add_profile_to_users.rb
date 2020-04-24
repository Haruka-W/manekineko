# frozen_string_literal: true

class AddProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    # デフォルト値をnilに修正
    change_column_default :users, :profile, nil
  end
end
