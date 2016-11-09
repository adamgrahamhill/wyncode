class User < ApplicationRecord
	has_secure_password
	has_many :widget_forms, :payments
end
