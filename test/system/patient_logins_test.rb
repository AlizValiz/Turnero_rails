require "application_system_test_case"

class PatientLoginsTest < ApplicationSystemTestCase
  setup do
    @patient_login = patient_logins(:one)
  end

  test "visiting the index" do
    visit patient_logins_url
    assert_selector "h1", text: "Patient Logins"
  end

  test "creating a Patient login" do
    visit patient_logins_url
    click_on "New Patient Login"

    fill_in "Apellidos", with: @patient_login.Apellidos
    fill_in "Especialidad", with: @patient_login.Especialidad
    fill_in "Fecha", with: @patient_login.Fecha
    fill_in "Nombre", with: @patient_login.Nombre
    fill_in "Sexo", with: @patient_login.sexo
    click_on "Create Patient login"

    assert_text "Patient login was successfully created"
    click_on "Back"
  end

  test "updating a Patient login" do
    visit patient_logins_url
    click_on "Edit", match: :first

    fill_in "Apellidos", with: @patient_login.Apellidos
    fill_in "Especialidad", with: @patient_login.Especialidad
    fill_in "Fecha", with: @patient_login.Fecha
    fill_in "Nombre", with: @patient_login.Nombre
    fill_in "Sexo", with: @patient_login.sexo
    click_on "Update Patient login"

    assert_text "Patient login was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient login" do
    visit patient_logins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient login was successfully destroyed"
  end
end
