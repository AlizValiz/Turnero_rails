require 'test_helper'

class PatientLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_log = patient_logs(:one)
  end

  test "should get index" do
    get patient_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_log_url
    assert_response :success
  end

  test "should create patient_log" do
    assert_difference('PatientLog.count') do
      post patient_logs_url, params: { patient_log: { Apellido: @patient_log.Apellido, Especialidad: @patient_log.Especialidad, Fecha_Nac: @patient_log.Fecha_Nac, Nombre: @patient_log.Nombre, Sexo: @patient_log.Sexo } }
    end

    assert_redirected_to patient_log_url(PatientLog.last)
  end

  test "should show patient_log" do
    get patient_log_url(@patient_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_log_url(@patient_log)
    assert_response :success
  end

  test "should update patient_log" do
    patch patient_log_url(@patient_log), params: { patient_log: { Apellido: @patient_log.Apellido, Especialidad: @patient_log.Especialidad, Fecha_Nac: @patient_log.Fecha_Nac, Nombre: @patient_log.Nombre, Sexo: @patient_log.Sexo } }
    assert_redirected_to patient_log_url(@patient_log)
  end

  test "should destroy patient_log" do
    assert_difference('PatientLog.count', -1) do
      delete patient_log_url(@patient_log)
    end

    assert_redirected_to patient_logs_url
  end
end
