require "application_system_test_case"

class DoctorLogsTest < ApplicationSystemTestCase
  setup do
    @doctor_log = doctor_logs(:one)
  end

  test "visiting the index" do
    visit doctor_logs_url
    assert_selector "h1", text: "Doctor Logs"
  end

  test "creating a Doctor log" do
    visit doctor_logs_url
    click_on "New Doctor Log"

    fill_in "Especialidad", with: @doctor_log.Especialidad
    fill_in "Name", with: @doctor_log.Name
    click_on "Create Doctor log"

    assert_text "Doctor log was successfully created"
    click_on "Back"
  end

  test "updating a Doctor log" do
    visit doctor_logs_url
    click_on "Edit", match: :first

    fill_in "Especialidad", with: @doctor_log.Especialidad
    fill_in "Name", with: @doctor_log.Name
    click_on "Update Doctor log"

    assert_text "Doctor log was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor log" do
    visit doctor_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor log was successfully destroyed"
  end
end
