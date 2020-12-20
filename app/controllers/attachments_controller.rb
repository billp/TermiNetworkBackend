class AttachmentsController < ApplicationController
	def upload
	  product = Product.new
    product.file.attach(attachment_params)
    data = File.read(params["file"].tempfile)
    checksum = Digest::SHA256.hexdigest(data)
	  product.file.purge

	  render json: {
			"success": true,
			"checksum": checksum,
			"param": params["test_param"]
		}
	end


	private

	def attachment_params
		params.require(:file)
	end
end
