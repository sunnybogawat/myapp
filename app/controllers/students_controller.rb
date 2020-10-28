class StudentsController < ApplicationController
  before_action :set_student, only: [:show]
  
  def index
   @students = Student.all
   render json: @students
  end
  
  def show
    render json: {student:@student, teachers:@student.teachers.as_json(:root => false),subjects:@student.subjects.as_json(:root => false) }.to_json
  end  
  private
  
  def set_student
    @student = Student.find(params[:id] || params[:student_id])
  end
end
