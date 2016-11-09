module SearchByName
  extend ActiveSupport::Conern

  module ClassMethods
    def search(term)
      where("name LIKE ?", "%#{term}%")
    end
  end
end
