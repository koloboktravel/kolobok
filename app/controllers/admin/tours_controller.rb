class Admin::ToursController < AdminController
  def index
    @tours = Tour.order(:id)
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new tour_params

    if @tour.save
      redirect_to admin_tours_path
    else
      render :new
    end
  end

  def edit
    @tour = Tour.find params[:id]
  end

  def update
    @tour = Tour.find params[:id]

    if @tour.update_attributes tour_params
      redirect_to admin_tours_path
    else
      render :edit
    end
  end

  def destroy
    @tour = Tour.find params[:id]
    redirect_to :back
  end

  private

  def tour_params
    params.require(:tour).permit!
  end
end