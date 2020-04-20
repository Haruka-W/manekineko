class InviteComment < ApplicationRecord
	belongs_to :user
	belongs_to :invite
	validates :comment, presence: true
end
