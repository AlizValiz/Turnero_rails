require 'test_helper'

class DoctorLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor_log = doctor_logs(:one)
  end

  test "should get index" do
    get doctor_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_doctor_log_url
    assert_response :success
  end

  test "should create doctor_log" do
    assert_difference('DoctorLog.count') do
      post doctor_logs_url, params: { doctor_log: { Especialidad: @doctor_log.Especialidad, Name: @doctor_log.Name } }
    end

    assert_redirected_to doctor_log_url(DoctorLog.last)
  end

  test "should show doctor_log" do
    get doctor_log_url(@doctor_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctor_log_url(@doctor_log)
    assert_response :success
  end

  test "should update doctor_log" do
    patch doctor_log_url(@doctor_log), params: { doctor_log: { Especialidad: @doctor_log.Especialidad, Name: @doctor_log.Name } }
    assert_redirected_to doctor_log_url(@doctor_log)
  end

  test "should destroy doctor_log" do
    assert_difference('DoctorLog.count', -1) do
      delete doctor_log_url(@doctor_log)
    end

    assert_redirected_to doctor_logs_url
  end
end
