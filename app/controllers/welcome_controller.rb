class WelcomeController < ApplicationController
 def index
   @patient_logs = PatientLog.all.order("created_at DESC").limit(5)
 end
end
