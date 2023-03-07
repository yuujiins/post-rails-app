require "test_helper"

class RolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @role = roles(:one)
  end

  test "should get index" do
    get roles_url, as: :json
    assert_response :success
  end

  test "should create role" do
    assert_difference("Role.count") do
      post roles_url, params: { role: { role: @role.role, user_id: @role.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show role" do
    get role_url(@role), as: :json
    assert_response :success
  end

  test "should update role" do
    patch role_url(@role), params: { role: { role: @role.role, user_id: @role.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy role" do
    assert_difference("Role.count", -1) do
      delete role_url(@role), as: :json
    end

    assert_response :no_content
  end
end
