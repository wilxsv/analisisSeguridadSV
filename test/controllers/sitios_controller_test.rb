require 'test_helper'

class SitiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sitio = sitios(:one)
  end

  test "should get index" do
    get sitios_url, as: :json
    assert_response :success
  end

  test "should create sitio" do
    assert_difference('Sitio.count') do
      post sitios_url, params: { sitio: { sitio_nombre: @sitio.sitio_nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show sitio" do
    get sitio_url(@sitio), as: :json
    assert_response :success
  end

  test "should update sitio" do
    patch sitio_url(@sitio), params: { sitio: { sitio_nombre: @sitio.sitio_nombre } }, as: :json
    assert_response 200
  end

  test "should destroy sitio" do
    assert_difference('Sitio.count', -1) do
      delete sitio_url(@sitio), as: :json
    end

    assert_response 204
  end
end
