class Label < ApplicationRecord
  include SearchByName
  # def self.search(term)
  #   where("name LIKE ?", "%#{term}%")
  # end
end
