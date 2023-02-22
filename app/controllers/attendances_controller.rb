class AttendancesController < ApplicationController
  def index
    
  end

  def show
    @attendances = Attendance.where(event_id: params[:id])
  end
end
