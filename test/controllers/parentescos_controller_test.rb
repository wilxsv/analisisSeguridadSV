require 'test_helper'

class ParentescosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parentesco = parentescos(:one)
  end

  test "should get index" do
    get parentescos_url, as: :json
    assert_response :success
  end

  test "should create parentesco" do
    assert_difference('Parentesco.count') do
      post parentescos_url, params: { parentesco: { parentesco_nombre: @parentesco.parentesco_nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show parentesco" do
    get parentesco_url(@parentesco), as: :json
    assert_response :success
  end

  test "should update parentesco" do
    patch parentesco_url(@parentesco), params: { parentesco: { parentesco_nombre: @parentesco.parentesco_nombre } }, as: :json
    assert_response 200
  end

  test "should destroy parentesco" do
    assert_difference('Parentesco.count', -1) do
      delete parentesco_url(@parentesco), as: :json
    end

    assert_response 204
  end
end
