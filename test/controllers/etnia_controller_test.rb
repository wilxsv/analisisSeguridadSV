require 'test_helper'

class EtniaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etnium = etnia(:one)
  end

  test "should get index" do
    get etnia_url, as: :json
    assert_response :success
  end

  test "should create etnium" do
    assert_difference('Etnium.count') do
      post etnia_url, params: { etnium: { etnia_nombre: @etnium.etnia_nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show etnium" do
    get etnium_url(@etnium), as: :json
    assert_response :success
  end

  test "should update etnium" do
    patch etnium_url(@etnium), params: { etnium: { etnia_nombre: @etnium.etnia_nombre } }, as: :json
    assert_response 200
  end

  test "should destroy etnium" do
    assert_difference('Etnium.count', -1) do
      delete etnium_url(@etnium), as: :json
    end

    assert_response 204
  end
end
