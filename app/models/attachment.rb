class Attachment < ApplicationRecord
	has_one_attached :file
end
