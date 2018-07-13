class PatientLoginsController < ApplicationController
  before_action :set_patient_login, only: [:show, :edit, :update, :destroy]

  # GET /patient_logins
  # GET /patient_logins.json
  def index
    @patient_logins = PatientLogin.all
  end

  # GET /patient_logins/1
  # GET /patient_logins/1.json
  def show
  end

  # GET /patient_logins/new
  def new
    @patient_login = PatientLogin.new
  end

  # GET /patient_logins/1/edit
  def edit
  end

  # POST /patient_logins
  # POST /patient_logins.json
  def create
    @patient_login = PatientLogin.new(patient_login_params)

    respond_to do |format|
      if @patient_login.save
        format.html { redirect_to @patient_login, notice: 'Patient login was successfully created.' }
        format.json { render :show, status: :created, location: @patient_login }
      else
        format.html { render :new }
        format.json { render json: @patient_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_logins/1
  # PATCH/PUT /patient_logins/1.json
  def update
    respond_to do |format|
      if @patient_login.update(patient_login_params)
        format.html { redirect_to @patient_login, notice: 'Patient login was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_login }
      else
        format.html { render :edit }
        format.json { render json: @patient_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_logins/1
  # DELETE /patient_logins/1.json
  def destroy
    @patient_login.destroy
    respond_to do |format|
      format.html { redirect_to patient_logins_url, notice: 'Patient login was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_login
      @patient_login = PatientLogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_login_params
      params.require(:patient_login).permit(:Nombre, :Apellidos, :Fecha, :sexo, :Especialidad)
    end
end
