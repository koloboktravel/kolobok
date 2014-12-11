class Admin::CitiesController < AdminController
  def index
    @cities = City.order(:id)
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new city_params
    if @city.save
      redirect_to admin_cities_path
    else
      render :new
    end
  end

  def edit
    @city = City.find params[:id]
  end

  def update
    @city = City.find params[:id]

    if @city.update_attributes city_params
      redirect_to admin_cities_path
    else
      render :edit
    end
  end

  def destroy
    @city = City.find params[:id]
    @city.destroy
    redirect_to :back
  end

  private

  def city_params
    params.require(:city).permit!
  end
end