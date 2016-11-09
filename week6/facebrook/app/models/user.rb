class User < ApplicationRecord
  has_many :comments
  has_and_belongs_to_many :followers,
                          class_name: "User",
                          join_table: :friendships,
                          foreign_key: :user_id,
                          association_foreign_key: :friend_user_id
end
