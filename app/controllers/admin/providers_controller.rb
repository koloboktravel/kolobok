class Admin::ProvidersController < AdminController
  def index
    @providers = Provider.order(:id)
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new provider_params

    if @provider.save
      redirect_to admin_providers_path
    else
      render :new
    end
  end

  def edit
    @provider = Provider.find params[:id]
  end

  def update
    @provider = Provider.find params[:id]

    if @provider.update_attributes provider_params
      redirect_to admin_providers_path
    else
      render :edit
    end
  end

  def destroy
    @provider = Provider.find params[:id]
    redirect_to :back
  end

  private

  def provider_params
    params.require(:provider).permit!
  end
end