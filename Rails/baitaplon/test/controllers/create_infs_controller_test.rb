require "test_helper"

class CreateInfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_inf = create_infs(:one)
  end

  test "should get index" do
    get create_infs_url
    assert_response :success
  end

  test "should get new" do
    get new_create_inf_url
    assert_response :success
  end

  test "should create create_inf" do
    assert_difference("CreateInf.count") do
      post create_infs_url, params: { create_inf: { email: @create_inf.email, first_name: @create_inf.first_name, last_name: @create_inf.last_name, phone: @create_inf.phone, twitter: @create_inf.twitter } }
    end

    assert_redirected_to create_inf_url(CreateInf.last)
  end

  test "should show create_inf" do
    get create_inf_url(@create_inf)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_inf_url(@create_inf)
    assert_response :success
  end

  test "should update create_inf" do
    patch create_inf_url(@create_inf), params: { create_inf: { email: @create_inf.email, first_name: @create_inf.first_name, last_name: @create_inf.last_name, phone: @create_inf.phone, twitter: @create_inf.twitter } }
    assert_redirected_to create_inf_url(@create_inf)
  end

  test "should destroy create_inf" do
    assert_difference("CreateInf.count", -1) do
      delete create_inf_url(@create_inf)
    end

    assert_redirected_to create_infs_url
  end
end
