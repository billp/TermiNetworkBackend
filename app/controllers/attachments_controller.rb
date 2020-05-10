class AttachmentsController < ApplicationController
	def upload
	  attachment = Attachment.new
		attachment.file.attach(attachment_params)
	  attachment.file.purge

	  render json: { "success": true }
	end


	private

	def attachment_params
		params.require(:file)
	end
end
