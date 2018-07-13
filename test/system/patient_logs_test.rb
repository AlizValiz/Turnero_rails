require "application_system_test_case"

class PatientLogsTest < ApplicationSystemTestCase
  setup do
    @patient_log = patient_logs(:one)
  end

  test "visiting the index" do
    visit patient_logs_url
    assert_selector "h1", text: "Patient Logs"
  end

  test "creating a Patient log" do
    visit patient_logs_url
    click_on "New Patient Log"

    fill_in "Apellido", with: @patient_log.Apellido
    fill_in "Especialidad", with: @patient_log.Especialidad
    fill_in "Fecha Nac", with: @patient_log.Fecha_Nac
    fill_in "Nombre", with: @patient_log.Nombre
    fill_in "Sexo", with: @patient_log.Sexo
    click_on "Create Patient log"

    assert_text "Patient log was successfully created"
    click_on "Back"
  end

  test "updating a Patient log" do
    visit patient_logs_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @patient_log.Apellido
    fill_in "Especialidad", with: @patient_log.Especialidad
    fill_in "Fecha Nac", with: @patient_log.Fecha_Nac
    fill_in "Nombre", with: @patient_log.Nombre
    fill_in "Sexo", with: @patient_log.Sexo
    click_on "Update Patient log"

    assert_text "Patient log was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient log" do
    visit patient_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient log was successfully destroyed"
  end
end
