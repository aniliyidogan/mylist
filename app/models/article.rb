class Article < ActiveRecord::Base

validates :subject, presence: true,
                    length: { in: 3..15 }

validates :target, presence: true,
                    length: { in: 5..20 }

end
