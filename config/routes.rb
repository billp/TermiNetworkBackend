Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/test_params', to: 'test#test_params', via: [:get, :post, :delete]
  match '/test_status_code', to: 'test#test_status_code', via: [:get]
  match '/test_headers', to: 'test#test_headers', via: [:get]
  post '/upload_file', to: 'attachments#upload'
end
