class DoctorLogsController < ApplicationController
  before_action :set_doctor_log, only: [:show, :edit, :update, :destroy]

  # GET /doctor_logs
  # GET /doctor_logs.json
  def index
    @doctor_logs = DoctorLog.all
  end

  # GET /doctor_logs/1
  # GET /doctor_logs/1.json
  def show
  end

  # GET /doctor_logs/new
  def new
    @doctor_log = DoctorLog.new
  end

  # GET /doctor_logs/1/edit
  def edit
  end

  # POST /doctor_logs
  # POST /doctor_logs.json
  def create
    @doctor_log = DoctorLog.new(doctor_log_params)

    respond_to do |format|
      if @doctor_log.save
        format.html { redirect_to @doctor_log, notice: 'Doctor log was successfully created.' }
        format.json { render :show, status: :created, location: @doctor_log }
      else
        format.html { render :new }
        format.json { render json: @doctor_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_logs/1
  # PATCH/PUT /doctor_logs/1.json
  def update
    respond_to do |format|
      if @doctor_log.update(doctor_log_params)
        format.html { redirect_to @doctor_log, notice: 'Doctor log was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_log }
      else
        format.html { render :edit }
        format.json { render json: @doctor_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_logs/1
  # DELETE /doctor_logs/1.json
  def destroy
    @doctor_log.destroy
    respond_to do |format|
      format.html { redirect_to doctor_logs_url, notice: 'Doctor log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_log
      @doctor_log = DoctorLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_log_params
      params.require(:doctor_log).permit(:Name, :Especialidad)
    end
end
