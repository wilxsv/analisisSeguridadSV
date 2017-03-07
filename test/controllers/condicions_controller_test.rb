require 'test_helper'

class CondicionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condicion = condicions(:one)
  end

  test "should get index" do
    get condicions_url, as: :json
    assert_response :success
  end

  test "should create condicion" do
    assert_difference('Condicion.count') do
      post condicions_url, params: { condicion: { condicion_nombre: @condicion.condicion_nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show condicion" do
    get condicion_url(@condicion), as: :json
    assert_response :success
  end

  test "should update condicion" do
    patch condicion_url(@condicion), params: { condicion: { condicion_nombre: @condicion.condicion_nombre } }, as: :json
    assert_response 200
  end

  test "should destroy condicion" do
    assert_difference('Condicion.count', -1) do
      delete condicion_url(@condicion), as: :json
    end

    assert_response 204
  end
end
