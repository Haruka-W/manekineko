# frozen_string_literal: true
# 都道府県モデル。userにenumで定義できたので使わなくなった。
class Prefecture < ApplicationRecord
  has_many :users, dependent: :destroy
end
