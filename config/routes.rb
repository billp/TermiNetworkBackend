Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/test_params', to: 'test#test_params', via: [:get, :post, :delete]
  match '/test_status_code', to: 'test#test_status_code', via: [:get]
  match '/test_headers', to: 'test#test_headers', via: [:get]
  match '/test_empty_response', to: 'test#test_empty_response', via: [:get, :post]
  match '/test_encrypt_params', to: 'test#test_encrypt_params', via: [:get, :post]
  post '/upload_file', to: 'attachments#upload'
end
