require 'test_helper'

class EscolaridadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @escolaridad = escolaridads(:one)
  end

  test "should get index" do
    get escolaridads_url, as: :json
    assert_response :success
  end

  test "should create escolaridad" do
    assert_difference('Escolaridad.count') do
      post escolaridads_url, params: { escolaridad: { escolaridad_nombre: @escolaridad.escolaridad_nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show escolaridad" do
    get escolaridad_url(@escolaridad), as: :json
    assert_response :success
  end

  test "should update escolaridad" do
    patch escolaridad_url(@escolaridad), params: { escolaridad: { escolaridad_nombre: @escolaridad.escolaridad_nombre } }, as: :json
    assert_response 200
  end

  test "should destroy escolaridad" do
    assert_difference('Escolaridad.count', -1) do
      delete escolaridad_url(@escolaridad), as: :json
    end

    assert_response 204
  end
end
