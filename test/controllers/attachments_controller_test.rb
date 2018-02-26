require 'test_helper'

class AttachmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get upload" do
    get attachments_upload_url
    assert_response :success
  end

end
