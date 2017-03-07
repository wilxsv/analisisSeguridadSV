require 'test_helper'

class PersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get personas_url, as: :json
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post personas_url, params: { persona: { arma_id: @persona.arma_id, escolaridad_id: @persona.escolaridad_id, estadocivil_id: @persona.estadocivil_id, etnia_id: @persona.etnia_id, genero_id: @persona.genero_id, localidad_id: @persona.localidad_id, persona_direccion: @persona.persona_direccion, persona_discapacidad: @persona.persona_discapacidad, persona_edad: @persona.persona_edad, persona_embarazo: @persona.persona_embarazo } }, as: :json
    end

    assert_response 201
  end

  test "should show persona" do
    get persona_url(@persona), as: :json
    assert_response :success
  end

  test "should update persona" do
    patch persona_url(@persona), params: { persona: { arma_id: @persona.arma_id, escolaridad_id: @persona.escolaridad_id, estadocivil_id: @persona.estadocivil_id, etnia_id: @persona.etnia_id, genero_id: @persona.genero_id, localidad_id: @persona.localidad_id, persona_direccion: @persona.persona_direccion, persona_discapacidad: @persona.persona_discapacidad, persona_edad: @persona.persona_edad, persona_embarazo: @persona.persona_embarazo } }, as: :json
    assert_response 200
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete persona_url(@persona), as: :json
    end

    assert_response 204
  end
end
