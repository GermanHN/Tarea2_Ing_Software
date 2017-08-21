require 'test_helper'

class RegistroMaestrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_maestro = registro_maestros(:one)
  end

  test "should get index" do
    get registro_maestros_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_maestro_url
    assert_response :success
  end

  test "should create registro_maestro" do
    assert_difference('RegistroMaestro.count') do
      post registro_maestros_url, params: { registro_maestro: { area: @registro_maestro.area, cuenta: @registro_maestro.cuenta, nombre: @registro_maestro.nombre } }
    end

    assert_redirected_to registro_maestro_url(RegistroMaestro.last)
  end

  test "should show registro_maestro" do
    get registro_maestro_url(@registro_maestro)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_maestro_url(@registro_maestro)
    assert_response :success
  end

  test "should update registro_maestro" do
    patch registro_maestro_url(@registro_maestro), params: { registro_maestro: { area: @registro_maestro.area, cuenta: @registro_maestro.cuenta, nombre: @registro_maestro.nombre } }
    assert_redirected_to registro_maestro_url(@registro_maestro)
  end

  test "should destroy registro_maestro" do
    assert_difference('RegistroMaestro.count', -1) do
      delete registro_maestro_url(@registro_maestro)
    end

    assert_redirected_to registro_maestros_url
  end
end
