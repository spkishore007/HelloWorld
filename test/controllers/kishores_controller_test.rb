require 'test_helper'

class KishoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kishore = kishores(:one)
  end

  test "should get index" do
    get kishores_url
    assert_response :success
  end

  test "should get new" do
    get new_kishore_url
    assert_response :success
  end

  test "should create kishore" do
    assert_difference('Kishore.count') do
      post kishores_url, params: { kishore: { name: @kishore.name } }
    end

    assert_redirected_to kishore_url(Kishore.last)
  end

  test "should show kishore" do
    get kishore_url(@kishore)
    assert_response :success
  end

  test "should get edit" do
    get edit_kishore_url(@kishore)
    assert_response :success
  end

  test "should update kishore" do
    patch kishore_url(@kishore), params: { kishore: { name: @kishore.name } }
    assert_redirected_to kishore_url(@kishore)
  end

  test "should destroy kishore" do
    assert_difference('Kishore.count', -1) do
      delete kishore_url(@kishore)
    end

    assert_redirected_to kishores_url
  end
end
