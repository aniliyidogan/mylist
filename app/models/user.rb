class User < ActiveRecord::Base
	has_secure_password

	validates :username, presence: true,
						uniqueness: { case_sensitive: false },
						length: 	{ in: 3..15 }
	validates :password, presence: true,
						length: { in: 6..20 }

def name
	"#{username}"
	end


end