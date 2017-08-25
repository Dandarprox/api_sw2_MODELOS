require 'test_helper'

class LibrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @libro = libros(:one)
  end

  test "should get index" do
    get libros_url, as: :json
    assert_response :success
  end

  test "should create libro" do
    assert_difference('Profesor.count') do
      post libros_url, params: { libro: { titulo: @libro.titulo, iso: @libro.iso, resumen: @libro.resumen } }, as: :json
    end

    assert_response 201
  end

  test "should show libro" do
    get libro_url(@libro), as: :json
    assert_response :success
  end

  test "should update libro" do
    patch libro_url(@libro), params: { libro: { titulo: @libro.titulo, iso: @libro.iso, resumen: @libro.resumen } }, as: :json
    assert_response 200
  end

  test "should destroy libro" do
    assert_difference('Libro.count', -1) do
      delete libro_url(@libro), as: :json
    end

    assert_response 204
  end
end
