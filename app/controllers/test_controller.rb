class TestController < ApplicationController
	def test_params
		render json: params.except(:controller, :action)
	end

	def test_status_code
		render json: { status_code: params[:status_code] }, status: params[:status_code]
	end

	def test_headers
		render json: request.env.select { |k,v| k.match("^HTTP_.*") }
	end

	def test_empty_response
		head :ok, content_type: 'text/html'
	end

	def test_json_params
		render json: params
	end

	def test_encrypt_params
		key = "aaaaaaaaaaaaaaaaaaaaaaabcdefg123"
		byebug
		puts params[:data]
		decrypted_json = aes256_decrypt(key, Base64.strict_decode64(params[:data])).to_json
		render json: { data: Base64.strict_encode64(aes256_encrypt(decrypted_json)) }
	end

	private
		def aes256_encrypt(key, data)
			aes = OpenSSL::Cipher.new('AES-256-ECB')

			aes.encrypt
			aes.key = key
			aes.update(data) + aes.final
		end

		def aes256_decrypt(key, data)
		  key = Digest::SHA256.digest(key) if(key.kind_of?(String) && 32 != key.bytesize)
			aes = OpenSSL::Cipher.new('AES-256-ECB')
		  aes.decrypt
		  aes.key = Digest::SHA256.digest(key)
		  aes.update(data) + aes.final
		end
end
