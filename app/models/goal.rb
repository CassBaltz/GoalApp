class Goal < ActiveRecord::Base
  validates :user_id, :title, presence: true

  belongs_to :user

  has_many :goal_comments
end
