class ShirtsController < ApplicationController

  def index
    @shirts = Shirt.all
    @shirt = Shirt.new
  end

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.new(shirt_params)
    if @shirt.save
      flash[:succes] = "Shirt has been created"
      redirect_to shirts_path
    else
      flash[:alert] = "Uh-oh"
      redirect_to shirts_path
    end
  end

  def edit 
  end

  def update
  end

  def destroy
    @shirt = Shirt.find(params[:id])
    @shirt.destroy
    flash[:success] = "You successfully deleted that shirt!"
    redirect_to shirts_path
  end

  private

  def shirt_params
    params.require(:shirt).permit(:image)
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