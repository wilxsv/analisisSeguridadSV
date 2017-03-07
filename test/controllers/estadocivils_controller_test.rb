require 'test_helper'

class EstadocivilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estadocivil = estadocivils(:one)
  end

  test "should get index" do
    get estadocivils_url, as: :json
    assert_response :success
  end

  test "should create estadocivil" do
    assert_difference('Estadocivil.count') do
      post estadocivils_url, params: { estadocivil: { estadocivil_nombre: @estadocivil.estadocivil_nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show estadocivil" do
    get estadocivil_url(@estadocivil), as: :json
    assert_response :success
  end

  test "should update estadocivil" do
    patch estadocivil_url(@estadocivil), params: { estadocivil: { estadocivil_nombre: @estadocivil.estadocivil_nombre } }, as: :json
    assert_response 200
  end

  test "should destroy estadocivil" do
    assert_difference('Estadocivil.count', -1) do
      delete estadocivil_url(@estadocivil), as: :json
    end

    assert_response 204
  end
end
