class AttachmentsController < ApplicationController
	def upload
	  product = Product.new
		product.file.attach(attachment_params)
	  product.file.purge

	  render json: { "success": true }
	end


	private

	def attachment_params
		params.require(:file)
	end
end
