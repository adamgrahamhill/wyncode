class User < ApplicationRecord
  belongs_to :course
  validates :email, presence: true
end
