require 'test_helper'

class TipoDeServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_servicio = tipo_de_servicios(:one)
  end

  test "should get index" do
    get tipo_de_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_de_servicio_url
    assert_response :success
  end

  test "should create tipo_de_servicio" do
    assert_difference('TipoDeServicio.count') do
      post tipo_de_servicios_url, params: { tipo_de_servicio: { nombre: @tipo_de_servicio.nombre } }
    end

    assert_redirected_to tipo_de_servicio_url(TipoDeServicio.last)
  end

  test "should show tipo_de_servicio" do
    get tipo_de_servicio_url(@tipo_de_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_de_servicio_url(@tipo_de_servicio)
    assert_response :success
  end

  test "should update tipo_de_servicio" do
    patch tipo_de_servicio_url(@tipo_de_servicio), params: { tipo_de_servicio: { nombre: @tipo_de_servicio.nombre } }
    assert_redirected_to tipo_de_servicio_url(@tipo_de_servicio)
  end

  test "should destroy tipo_de_servicio" do
    assert_difference('TipoDeServicio.count', -1) do
      delete tipo_de_servicio_url(@tipo_de_servicio)
    end

    assert_redirected_to tipo_de_servicios_url
  end
end
