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
end
