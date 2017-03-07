require 'test_helper'

class HechosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hecho = hechos(:one)
  end

  test "should get index" do
    get hechos_url, as: :json
    assert_response :success
  end

  test "should create hecho" do
    assert_difference('Hecho.count') do
      post hechos_url, params: { hecho: { condicion_id: @hecho.condicion_id, delito_id: @hecho.delito_id, hecho_agresor: @hecho.hecho_agresor, hecho_denuncia: @hecho.hecho_denuncia, hecho_fecha: @hecho.hecho_fecha, hecho_registro: @hecho.hecho_registro, hecho_reincidencia: @hecho.hecho_reincidencia, parentesco_id: @hecho.parentesco_id, persona_id: @hecho.persona_id, sitio_id: @hecho.sitio_id } }, as: :json
    end

    assert_response 201
  end

  test "should show hecho" do
    get hecho_url(@hecho), as: :json
    assert_response :success
  end

  test "should update hecho" do
    patch hecho_url(@hecho), params: { hecho: { condicion_id: @hecho.condicion_id, delito_id: @hecho.delito_id, hecho_agresor: @hecho.hecho_agresor, hecho_denuncia: @hecho.hecho_denuncia, hecho_fecha: @hecho.hecho_fecha, hecho_registro: @hecho.hecho_registro, hecho_reincidencia: @hecho.hecho_reincidencia, parentesco_id: @hecho.parentesco_id, persona_id: @hecho.persona_id, sitio_id: @hecho.sitio_id } }, as: :json
    assert_response 200
  end

  test "should destroy hecho" do
    assert_difference('Hecho.count', -1) do
      delete hecho_url(@hecho), as: :json
    end

    assert_response 204
  end
end
