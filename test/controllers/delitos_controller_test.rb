require 'test_helper'

class DelitosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delito = delitos(:one)
  end

  test "should get index" do
    get delitos_url, as: :json
    assert_response :success
  end

  test "should create delito" do
    assert_difference('Delito.count') do
      post delitos_url, params: { delito: { delito_id: @delito.delito_id, delito_nombre: @delito.delito_nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show delito" do
    get delito_url(@delito), as: :json
    assert_response :success
  end

  test "should update delito" do
    patch delito_url(@delito), params: { delito: { delito_id: @delito.delito_id, delito_nombre: @delito.delito_nombre } }, as: :json
    assert_response 200
  end

  test "should destroy delito" do
    assert_difference('Delito.count', -1) do
      delete delito_url(@delito), as: :json
    end

    assert_response 204
  end
end
