class TestController < ApplicationController
	def test_params
		render json: params
	end

	def test_status_code
		render json: { status_code: params[:status_code] }, status: params[:status_code]
	end

	def test_headers
		render json: request.env.select { |k,v| k.match("^HTTP.*|^CONTENT.*|^REMOTE.*|^REQUEST.*|^AUTHORIZATION.*|^SCRIPT.*|^SERVER.*") }
	end
end
