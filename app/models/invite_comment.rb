# frozen_string_literal: true

class InviteComment < ApplicationRecord
  belongs_to :user
  belongs_to :invite
  validates :comment, presence: true
  has_many :notifications, dependent: :destroy
end
