require "application_system_test_case"

class CitaTest < ApplicationSystemTestCase
  setup do
    @citum = cita(:one)
  end

  test "visiting the index" do
    visit cita_url
    assert_selector "h1", text: "Cita"
  end

  test "creating a Citum" do
    visit cita_url
    click_on "New Citum"

    fill_in "Apellido", with: @citum.Apellido
    fill_in "Diagnostico", with: @citum.Diagnostico
    fill_in "Edad", with: @citum.Edad
    fill_in "Name", with: @citum.Name
    fill_in "Notas", with: @citum.Notas
    click_on "Create Citum"

    assert_text "Citum was successfully created"
    click_on "Back"
  end

  test "updating a Citum" do
    visit cita_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @citum.Apellido
    fill_in "Diagnostico", with: @citum.Diagnostico
    fill_in "Edad", with: @citum.Edad
    fill_in "Name", with: @citum.Name
    fill_in "Notas", with: @citum.Notas
    click_on "Update Citum"

    assert_text "Citum was successfully updated"
    click_on "Back"
  end

  test "destroying a Citum" do
    visit cita_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Citum was successfully destroyed"
  end
end
