# frozen_string_literal: true

class AddCommentToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :comment, :text
    add_column :invite_comments, :comment, :text
  end
end
