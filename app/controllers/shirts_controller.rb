class ShirtsController < ApplicationController

  def index
    @shirts = Shirt.all
  end

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.new(shirt_params)
    if @course.save
      flash[:succes] = "Shirt has been created"
      redirect_to root_index
    else
      flash[:alert] = "Uh-oh"
      redirect_to root_index
    end
  end

  def edit 
  end

  def update
  end

  private

  def shirt_params
    params.require(:shirt).permit(:name, :height, :collar, :weight, :chest, :arm)
  end
end


 # def index
 #    @courses = Course.all
 #  end

 #  def show
 #    @course = Course.find(params[:id])
 #  end

 #  def new
 #    @course = Course.new
 #  end

 #  def create
 #    @course = Course.new(course_params)

 #    if @course.save
 #      flash[:success] = "Course Created"
 #      redirect_to courses_path
 #    else
 #      flash[:danger] = "Please fill in every field"
 #      render :new
 #    end
 #  end

 #  def edit
 #    @course = Course.find(params[:id])
 #  end

 #  def update
 #    @course = Course.find(params[:id])

 #    if @course.update(course_params)
 #      flash[:success] = "Your course has been updated"
 #      redirect_to courses_path
 #    else
 #      render :new
 #    end
 #  end

 #  def destroy
 #    @course = Course.find(params[:id])
 #    @course.destroy
 #    redirect_to courses_path
 #  end