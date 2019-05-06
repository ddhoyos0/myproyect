require "application_system_test_case"

class TipoDeServiciosTest < ApplicationSystemTestCase
  setup do
    @tipo_de_servicio = tipo_de_servicios(:one)
  end

  test "visiting the index" do
    visit tipo_de_servicios_url
    assert_selector "h1", text: "Tipo De Servicios"
  end

  test "creating a Tipo de servicio" do
    visit tipo_de_servicios_url
    click_on "New Tipo De Servicio"

    fill_in "Nombre", with: @tipo_de_servicio.nombre
    click_on "Create Tipo de servicio"

    assert_text "Tipo de servicio was successfully created"
    click_on "Back"
  end

  test "updating a Tipo de servicio" do
    visit tipo_de_servicios_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tipo_de_servicio.nombre
    click_on "Update Tipo de servicio"

    assert_text "Tipo de servicio was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo de servicio" do
    visit tipo_de_servicios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo de servicio was successfully destroyed"
  end
end
