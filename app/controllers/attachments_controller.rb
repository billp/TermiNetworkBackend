class AttachmentsController < ApplicationController
	def upload
	  attachment = Attachment.create(attachment_params)
	  attachment.destroy

	  render json: { "success": true }
	end


	private

	def attachment_params
		params.require(:file).permit(:attachment)
	end
end
