require 'test_helper'

class UniversidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @universidad = universidads(:one)
  end

  test "should get index" do
    get universidads_url, as: :json
    assert_response :success
  end

  test "should create universidad" do
    assert_difference('Universidad.count') do
      post universidads_url, params: { universidad: { num_sedes: @universidad.num_sedes, ciudad: @universidad.ciudad, nombre: @universidad.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show universidad" do
    get universidad_url(@universidad), as: :json
    assert_response :success
  end

  test "should update universidad" do
    patch universidad_url(@universidad), params: { universidad: { num_sedes: @universidad.num_sedes, ciudad: @universidad.ciudad, nombre: @universidad.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy universidad" do
    assert_difference('Universidad.count', -1) do
      delete universidad_url(@universidad), as: :json
    end

    assert_response 204
  end
end
