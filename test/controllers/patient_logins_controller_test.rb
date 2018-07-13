require 'test_helper'

class PatientLoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_login = patient_logins(:one)
  end

  test "should get index" do
    get patient_logins_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_login_url
    assert_response :success
  end

  test "should create patient_login" do
    assert_difference('PatientLogin.count') do
      post patient_logins_url, params: { patient_login: { Apellidos: @patient_login.Apellidos, Especialidad: @patient_login.Especialidad, Fecha: @patient_login.Fecha, Nombre: @patient_login.Nombre, sexo: @patient_login.sexo } }
    end

    assert_redirected_to patient_login_url(PatientLogin.last)
  end

  test "should show patient_login" do
    get patient_login_url(@patient_login)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_login_url(@patient_login)
    assert_response :success
  end

  test "should update patient_login" do
    patch patient_login_url(@patient_login), params: { patient_login: { Apellidos: @patient_login.Apellidos, Especialidad: @patient_login.Especialidad, Fecha: @patient_login.Fecha, Nombre: @patient_login.Nombre, sexo: @patient_login.sexo } }
    assert_redirected_to patient_login_url(@patient_login)
  end

  test "should destroy patient_login" do
    assert_difference('PatientLogin.count', -1) do
      delete patient_login_url(@patient_login)
    end

    assert_redirected_to patient_logins_url
  end
end
