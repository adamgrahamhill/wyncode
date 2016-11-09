class User < ApplicationRecord
  validates :name, presence: true #uniqueness,absence, inverse of etc..
  belongs_to :code_school
  has_one :profile
  has_many :projects
  has_and_belongs_to_many :teams, join_table: :user_teams

  def image_url
    if self.id.even?
      "http://www.fillmurray.com/300/200"
    else
      "https://www.placecage.com/c/460/300"
    end
  end
end
