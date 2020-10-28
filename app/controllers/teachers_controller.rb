class TeachersController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def show
   @teacher = Teacher.find(params[:id])
   render json: @teacher
  end

  def index
   @teachers = Teacher.all
   render json: @teachers
  end
end
