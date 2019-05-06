require "application_system_test_case"

class ImpuestosTest < ApplicationSystemTestCase
  setup do
    @impuesto = impuestos(:one)
  end

  test "visiting the index" do
    visit impuestos_url
    assert_selector "h1", text: "Impuestos"
  end

  test "creating a Impuesto" do
    visit impuestos_url
    click_on "New Impuesto"

    check "Estado" if @impuesto.estado
    fill_in "Nombre", with: @impuesto.nombre
    fill_in "Valor", with: @impuesto.valor
    click_on "Create Impuesto"

    assert_text "Impuesto was successfully created"
    click_on "Back"
  end

  test "updating a Impuesto" do
    visit impuestos_url
    click_on "Edit", match: :first

    check "Estado" if @impuesto.estado
    fill_in "Nombre", with: @impuesto.nombre
    fill_in "Valor", with: @impuesto.valor
    click_on "Update Impuesto"

    assert_text "Impuesto was successfully updated"
    click_on "Back"
  end

  test "destroying a Impuesto" do
    visit impuestos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Impuesto was successfully destroyed"
  end
end
