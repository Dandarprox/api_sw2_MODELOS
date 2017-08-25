require 'test_helper'

class BibliotecasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biblioteca = bibliotecas(:one)
  end

  test "should get index" do
    get bibliotecas_url, as: :json
    assert_response :success
  end

  test "should create biblioteca" do
    assert_difference('Biblioteca.count') do
      post bibliotecas_url, params: { biblioteca: { nombre: @biblioteca.nombre, tematica: @biblioteca.tematica, pisos: @biblioteca.pisos } }, as: :json
    end

    assert_response 201
  end

  test "should show biblioteca" do
    get biblioteca_url(@biblioteca), as: :json
    assert_response :success
  end

  test "should update biblioteca" do
    patch biblioteca_url(@biblioteca), params: { biblioteca: { nombre: @biblioteca.nombre, tematica: @biblioteca.tematica, pisos: @biblioteca.pisos } }, as: :json
    assert_response 200
  end

  test "should destroy biblioteca" do
    assert_difference('Biblioteca.count', -1) do
      delete biblioteca_url(@biblioteca), as: :json
    end

    assert_response 204
  end
end
