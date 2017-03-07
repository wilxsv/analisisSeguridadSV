require 'test_helper'

class ArmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arma = armas(:one)
  end

  test "should get index" do
    get armas_url, as: :json
    assert_response :success
  end

  test "should create arma" do
    assert_difference('Arma.count') do
      post armas_url, params: { arma: { arma_id: @arma.arma_id, arma_nombre: @arma.arma_nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show arma" do
    get arma_url(@arma), as: :json
    assert_response :success
  end

  test "should update arma" do
    patch arma_url(@arma), params: { arma: { arma_id: @arma.arma_id, arma_nombre: @arma.arma_nombre } }, as: :json
    assert_response 200
  end

  test "should destroy arma" do
    assert_difference('Arma.count', -1) do
      delete arma_url(@arma), as: :json
    end

    assert_response 204
  end
end
