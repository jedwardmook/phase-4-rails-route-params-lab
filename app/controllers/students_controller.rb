class StudentsController < ApplicationController

  def index
    if params[:name]
      # students = Student.all.select{|s| s.last_name.downcase == params[:name] || s.first_name.downcase == params[:name]}
      students = Student.select(:last_name.downcase, :first_name.downcase)
    else
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
