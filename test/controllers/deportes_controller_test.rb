require 'test_helper'

class DeportesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deporte = deportes(:one)
  end

  test "should get index" do
    get deportes_url, as: :json
    assert_response :success
  end

  test "should create deporte" do
    assert_difference('Deporte.count') do
      post deportes_url, params: { deporte: { tipo_depo: @deporte.tipo_depo, num_integrantes: @deporte.num_integrantes, nombre_entrenador: @deporte.nombre_entrenador } }, as: :json
    end

    assert_response 201
  end

  test "should show deporte" do
    get deporte_url(@deporte), as: :json
    assert_response :success
  end

  test "should update deporte" do
    patch deporte_url(@deporte), params: { deporte: { tipo_depo: @deporte.tipo_depo, num_integrantes: @deporte.num_integrantes, nombre_entrenador: @deporte.nombre_entrenador } }, as: :json
    assert_response 200
  end

  test "should destroy deporte" do
    assert_difference('Deporte.count', -1) do
      delete profesor_url(@deporte), as: :json
    end

    assert_response 204
  end
end
